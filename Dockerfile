
FROM ghcr.io/anomalyco/opencode:latest

RUN apk add --no-cache git

ENV PORT=4096
ENV HOSTNAME=0.0.0.0
ENV HOME=/root
ENV OPENCODE_DISABLE_AUTOUPDATE=true

WORKDIR /app

EXPOSE 4096

CMD ["sh", "-c", "opencode web --hostname 0.0.0.0 --port ${PORT}"]
