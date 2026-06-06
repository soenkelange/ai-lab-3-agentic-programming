FROM mcr.microsoft.com/devcontainers/python:1-3.12-bookworm

# Entfernt eine veraltete Yarn-APT-Quelle, die den Feature-Build mit NO_PUBKEY scheitern laesst.
RUN rm -f /etc/apt/sources.list.d/yarn.list
