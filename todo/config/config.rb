require 'mysql2'

# Connect to the MySQL server
client = Mysql::Client.new(
  host: 'localhost',
  username: 'root',
  password: '',
  database: 'todo'
)

# Create a table if it doesn't exist
client.query("CREATE TABLE IF NOT EXISTS users (
  id INTEGER PRIMARY KEY,
  name TEXT,
  age INTEGER
);")
