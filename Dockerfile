
FROM ghcr.io/anomalyco/opencode:latest

ENV HOME=/root
WORKDIR /app

EXPOSE 4096

CMD ["sh", "-c", "opencode web --hostname 0.0.0.0 --port ${PORT:-4096}"]
