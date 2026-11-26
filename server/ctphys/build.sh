#!/usr/bin/env bash
# Builds ctphys.jar against the Forge server's own libraries (run after the Forge server has
# been installed once, so deploy/data/forge/libraries exists). Needs docker; uses a JDK 17 image.
# Output: deploy/mods/ctphys-1.0.0.jar (picked up on the next Forge container start).
set -euo pipefail
here="$(cd "$(dirname "$0")" && pwd)"
repo="$(cd "$here/../.." && pwd)"
docker run --rm -u "$(id -u):$(id -g)" \
  -v "$repo/deploy/data/forge/libraries:/libs:ro" \
  -v "$here:/src" -v "$repo/deploy/mods:/out" \
  eclipse-temurin:17-jdk sh -ec '
    cp=$(find /libs -name "*-srg.jar"; find /libs -name "*.jar" ! -name "*-srg.jar" ! -name "*-slim.jar" ! -name "*-unpacked.jar" ! -name "*-extra.jar" ! -name "server-1.20.1.jar" ! -name "forge-*-server.jar")
    cp=$(echo "$cp" | tr "\n" ":")
    rm -rf /tmp/b && mkdir -p /tmp/b
    javac --release 17 -nowarn -cp "$cp" -d /tmp/b $(find /src/src -name "*.java")
    cp -r /src/resources/. /tmp/b/
    printf "{\"pack\":{\"description\":\"ctphys\",\"pack_format\":15}}" > /tmp/b/pack.mcmeta
    cd /tmp/b && jar --create --file /out/ctphys-1.0.0.jar .
    echo built /out/ctphys-1.0.0.jar'
