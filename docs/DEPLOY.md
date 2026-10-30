# Deploying the minigames server

A step-by-step guide for server owners. Target: a Linux box with **Forge
1.20.1** and **Java 17+**. Scales fine for ~2–8 players.

## 0. Overview

The game logic is a **vanilla datapack** (this repo's `datapack/`). It runs on an
otherwise ordinary Forge 1.20.1 server. Management (wipe, reset, status, seed
pre-load) is done by the small scripts in `scripts/`, which talk to the server
over **RCON**.

## 1. Create the server directory

Pick a user to run the server (e.g. `minecraft`) and a directory (e.g.
`/srv/minecraft-minigames`). Everything below assumes those; override via
`scripts/config.sh` or env vars if you differ.

```bash
sudo useradd -r -m -d /srv/minecraft-minigames minecraft   # or reuse an account
sudo mkdir -p /srv/minecraft-minigames
sudo chown -R minecraft:minecraft /srv/minecraft-minigames
```

## 2. Install Forge 1.20.1

Download the **Forge 1.20.1 installer** (https://files.minecraftforge.net),
run it in server mode inside `/srv/minecraft-minigames`:

```bash
java -jar forge-1.20.1-47.4.10-installer.jar --installServer
```

This produces `libraries/…/forge/1.20.1-47.4.10/unix_args.txt` and
`user_jvm_args.txt`. Accept the EULA (`echo 'eula=true' > eula.txt`).

> Java notes: Forge 1.20.1 needs Java 17+. Set `JAVA_BIN` in `scripts/config.sh`
> and `server/start.sh` if `java` on your PATH isn't 17+.

## 3. Configure

```bash
cp server/server.properties.template /srv/minecraft-minigames/server.properties
# edit it: set a real rcon.password, keep enable-rcon=true, set ports/whitelist
printf '%s' 'YOUR_RCON_PASSWORD' | sudo -u minecraft tee /srv/minecraft-minigames/.rcon-pass >/dev/null
sudo -u minecraft chmod 600 /srv/minecraft-minigames/.rcon-pass
```

The scripts read the RCON password from `$RCON_PASS_FILE` (default
`$MC_DIR/.rcon-pass`) or `$RCON_PASSWORD`. **Never commit the real password.**

## 4. Install the datapack + launcher

```bash
MC_DIR=/srv/minecraft-minigames MC_USER=minecraft bash install.sh
```

This copies the datapack to `$MC_DIR/datapack` (the template the wipe script
clones into each new world) and installs `start.sh`.

## 5. Mods (optional but recommended)

See `server/mods.md`. Drop the jars into `/srv/minecraft-minigames/mods/`. The
two recommended mods (Upgrader, YYZS Backpack) are **client+server** — your
players need them too (`docs/PLAYERS.md`).

## 6. systemd service

```bash
sed -e 's#__MC_USER__#minecraft#g' -e 's#__MC_DIR__#/srv/minecraft-minigames#g' \
  server/minecraft-minigames.service.template | sudo tee /etc/systemd/system/minecraft-minigames.service
sudo systemctl daemon-reload
sudo systemctl enable --now minecraft-minigames
```

Watch it come up: `journalctl -u minecraft-minigames -f`. The game port opens
early; **RCON only works once world-gen finishes** — scripts poll for that.

## 7. Passwordless scripts (optional)

If you run the scripts as a non-root admin account, install the sudoers snippet
so they don't prompt:

```bash
sed -e 's#__ADMIN__#youruser#g' -e 's#__MC_USER__#minecraft#g' \
  server/sudoers.template | sudo tee /etc/sudoers.d/minecraft-minigames
sudo visudo -cf /etc/sudoers.d/minecraft-minigames   # validate
```

## 8. Managing it

```bash
bash scripts/status.sh        # service + players + active game + recent deaths
bash scripts/wipe.sh          # fresh random world, reinstall datapack
bash scripts/fast-wipe.sh     # instant reset using a pre-vetted seed if available
python3 scripts/rcon.py 'list'   # arbitrary RCON command
```

In-game: op yourself (`/op <name>`), then `/function minigames:help`.

## 9. Seed pre-loader (optional, nice for frequent resets)

`scripts/seed-daemon.sh` vets seeds on a **separate** vanilla instance so your
live game is never touched, stashing a good one for an instant `fast-wipe.sh`.

```bash
mkdir -p /srv/minecraft-minigames/seedcheck
# put a VANILLA 1.20.1 server.jar there, plus:
cp server/seedcheck.properties.template /srv/minecraft-minigames/seedcheck/server.properties
#   -> set a password, matching level-type, different ports (25598/25599)
echo 'eula=true' > /srv/minecraft-minigames/seedcheck/eula.txt
# store the seedcheck rcon password at seedcheck/.rcon-pass, then run detached:
setsid nohup bash scripts/seed-daemon.sh >/dev/null 2>&1 &
```

Memory: the shadow instance uses ~1.5 GB only while actively rolling, then
idles. Keep total RAM in mind on small boxes.

## Troubleshooting
- **Players rejected at login** → Forge/mod version mismatch (see PLAYERS.md).
- **Scripts hang right after a wipe** → RCON isn't up until world-gen finishes;
  the scripts already poll, just wait.
- **Mole Hunt players don't enter the stone** → the custom dimension needs one
  server **restart** after first install to register (a `/reload` isn't enough).
- **Watchdog crash during gen** → `max-tick-time=0` in server.properties (the
  template already sets it).
