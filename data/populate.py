import random
import psycopg2
from datetime import datetime, timedelta

conn = psycopg2.connect("dbname=benchmark user=postgres password=4109")
cur = conn.cursor()

#inseritng the users

users = [(f"user{i}", f"user{i}@mail.com") for i in range(5000)]
cur.executemany(
    "INSERT INTO users (name, email) VALUES (%s, %s)",
    users
)

#inserting  the orders
for i in range (25000):
    user_id = random.randint(1,5000)
    total = random
    

