#!/bin/bash

/etc/init.d/mysql start
mysql -uroot < create_db.sql
alembic upgrade head
python seed.py

python run.py
