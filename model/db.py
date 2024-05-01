# model/db.py
import mysql.connector

db_config = {
    "host": "139.59.246.2",
    "user": "thisisbookstore",
    "password": "thisisgrp13",
    "database": "bookstore_grp13",
    "port": 3306,
}

def get_db():
    db = mysql.connector.connect(**db_config)
    cursor = db.cursor()
    try:
        yield cursor, db
    finally:
        cursor.close()
        db.close()
