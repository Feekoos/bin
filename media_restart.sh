#!/bin/bash
/usr/bin/docker compose -f /home/fikus/DockerComposeFiles/media_stack/docker-compose.yml down; /usr/bin/docker compose -f /home/fikus/DockerComposeFiles/media_stack/docker-compose.yml up -d
