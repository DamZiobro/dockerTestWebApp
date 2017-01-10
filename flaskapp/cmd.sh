#! /bin/bash
#
# cmd.sh
# Copyright (C) 2017 damian <damian@damian-laptop>
#
# Distributed under terms of the MIT license.
#
set -e

if [ "$ENV" == "DEV" ]; then
  echo "Development mode"
  exec python flaskapp.py
else 
  echo "Production mode"
  exec uwsgi --http 0.0.0.0:9090 --wsgi-file /app/flaskapp.py --callable flaskApp --stats 0.0.0.0:9191
fi


