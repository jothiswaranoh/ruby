
# Create (Insert) operation
def create_user(client, name, age)
    client.query("INSERT INTO users (name, age) VALUES (?, ?)", [name, age])
  end
  
  # Read (Select) operation
  def get_user(client, id)
    client.query("SELECT * FROM users WHERE id = ?", [id]).first
  end
  
  # Update operation
  def update_user(client, id, name, age)
    client.query("UPDATE users SET name = ?, age = ? WHERE id = ?", [name, age, id])
  end
  
  # Delete operation
  def delete_user(client, id)
    client.query("DELETE FROM users WHERE id = ?", [id])
  end
  
  # Example usage
  create_user(client, "John Doe", 30)
  create_user(client, "Jane Smith", 25)
  
  # Get a user by id
  user = get_user(client, 1)
  puts "User with ID 1: #{user.inspect}"
  
  # Update user
  update_user(client, 1, "John Smith", 31)
  user = get_user(client, 1)
  puts "Updated user: #{user.inspect}"
  
  # Delete user
  delete_user(client, 2)
  user = get_user(client, 2)
  puts "User with ID 2: #{user.inspect}"
  