FROM docker.io/library/node:18-bookworm-slim

COPY src/ .
RUN npm install . -g