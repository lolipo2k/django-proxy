#!/bin/bash
set -e

set -- python server.py

exec "$@"
