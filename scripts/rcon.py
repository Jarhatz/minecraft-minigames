#!/usr/bin/env python3
"""Minimal RCON client for the minigames server.

Usage:
    python3 rcon.py '<command>' ['<command>' ...]

Connection settings come from the environment (with sensible defaults):
    RCON_HOST        default 127.0.0.1
    RCON_PORT        default 25575
    RCON_PASSWORD    the password, OR
    RCON_PASS_FILE   a file containing the password (default: ./.rcon-pass)
"""
import os
import socket
import struct
import sys

HOST = os.environ.get("RCON_HOST", "127.0.0.1")
PORT = int(os.environ.get("RCON_PORT", "25575"))


def _password():
    pw = os.environ.get("RCON_PASSWORD")
    if pw:
        return pw
    path = os.environ.get("RCON_PASS_FILE", ".rcon-pass")
    try:
        with open(path) as fh:
            return fh.read().strip()
    except OSError:
        print(f"rcon: no RCON_PASSWORD set and cannot read {path}", file=sys.stderr)
        sys.exit(2)


def pack(req_id, ptype, payload):
    body = struct.pack("<ii", req_id, ptype) + payload.encode() + b"\x00\x00"
    return struct.pack("<i", len(body)) + body


def recv_packet(sock):
    raw = b""
    while len(raw) < 4:
        c = sock.recv(4 - len(raw))
        if not c:
            raise ConnectionError("closed")
        raw += c
    (length,) = struct.unpack("<i", raw)
    data = b""
    while len(data) < length:
        c = sock.recv(length - len(data))
        if not c:
            raise ConnectionError("closed")
        data += c
    rid, ptype = struct.unpack("<ii", data[:8])
    return rid, ptype, data[8:-2].decode("utf-8", "replace")


def main():
    if len(sys.argv) < 2:
        print("usage: rcon.py '<command>' [...]", file=sys.stderr)
        sys.exit(2)
    password = _password()
    with socket.create_connection((HOST, PORT), timeout=10) as s:
        s.sendall(pack(1, 3, password))
        rid, _, _ = recv_packet(s)
        if rid == -1:
            print("rcon auth failed", file=sys.stderr)
            sys.exit(1)
        for cmd in sys.argv[1:]:
            s.sendall(pack(2, 2, cmd))
            s.settimeout(6)
            try:
                _, _, payload = recv_packet(s)
            except socket.timeout:
                payload = "(no response)"
            print(f"> {cmd}\n{payload}")


if __name__ == "__main__":
    main()
