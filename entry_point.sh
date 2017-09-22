#!/bin/bash

/etc/init.d/mysql start
alembic upgrade head
python run.py
