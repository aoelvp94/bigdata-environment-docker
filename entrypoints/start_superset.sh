#!/bin/bash
superset-init --username "$SUPERSET_USER" --password "$SUPERSET_PASSWORD" --firstname "$SUPERSET_FIRSTNAME" --lastname "$SUPERSET_LASTNAME" --email "$SUPERSET_EMAIL"

gunicorn --bind 0.0.0.0:"$SUPERSET_PORT" -w 10 --timeout 120 "superset.app:create_app()"