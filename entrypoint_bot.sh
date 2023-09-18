#!/bin/bash
set -e

set -- python task_bot.py "$@"

exec "$@"
