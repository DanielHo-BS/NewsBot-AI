FROM n8nio/n8n
USER root

RUN apk add --no-cache python3 py3-pip
RUN python3 --version && pip --version

RUN python3 -m pip install yt-dlp --break-system-packages --no-cache-dir
RUN yt-dlp --version
