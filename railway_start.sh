#!/bin/bash
# Проверяем наличие переменной и создаём файл конфига
if [ -n "$NANOBOT_CONFIG_JSON" ]; then
    echo "NANOBOT_CONFIG_JSON found, creating config file..."
    mkdir -p ~/.nanobot
    echo "$NANOBOT_CONFIG_JSON" > ~/.nanobot/config.json
    echo "Config file created at ~/.nanobot/config.json"
else
    echo "ERROR: NANOBOT_CONFIG_JSON environment variable is not set!"
    exit 1
fi
# Запускаем бота
exec nanobot gateway
