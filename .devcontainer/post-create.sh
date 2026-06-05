#!/usr/bin/env bash
set -u

PYTHON_BIN="$(command -v python3 || command -v python || true)"

if [[ -z "$PYTHON_BIN" ]]; then
  echo "[devcontainer] ERROR: Weder python3 noch python gefunden."
  exit 1
fi

log() {
  echo "[devcontainer] $1"
}

install_python_pkg() {
  local pkg="$1"
  if "$PYTHON_BIN" -m pip install "$pkg"; then
    log "Python-Paket installiert: $pkg"
  else
    log "WARN: Python-Paket konnte nicht installiert werden: $pkg"
  fi
}

install_npm_first_available() {
  local label="$1"
  shift

  local pkg
  for pkg in "$@"; do
    if npm install -g "$pkg"; then
      log "$label installiert via $pkg"
      return 0
    fi
  done

  log "WARN: $label konnte mit keinem bekannten Paketnamen installiert werden."
  return 1
}

log "Pip aktualisieren"
"$PYTHON_BIN" -m pip install --upgrade pip setuptools wheel

log "Kostenlose CLI-Agent-Tools installieren"
install_python_pkg aider-chat
install_python_pkg litellm
install_python_pkg openai
install_python_pkg google-genai
install_python_pkg pi-agent
install_python_pkg ollama

log "Freie CLI-Alternativen (npm) installieren"
install_npm_first_available "OpenCode CLI" "@opencode-ai/cli" "opencode-ai" "opencode"

log "Tool-Versionen anzeigen"
"$PYTHON_BIN" --version || true
node --version || true
npm --version || true
aider --version || true
if command -v pi >/dev/null 2>&1; then
  log "Pi Agent verfuegbar"
elif command -v pi-agent >/dev/null 2>&1; then
  log "pi-agent verfuegbar"
else
  log "Pi Agent nicht im PATH"
fi

log "Fertig"
