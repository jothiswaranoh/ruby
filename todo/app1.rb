# require 'sinatra'

# # Set up the route for the home page
# get '/' do
#   erb :index
# end

# # Handle form submission
# post '/submit' do
#   name = params[:name]
#   age = params[:age]

#   # Do something with the user input (e.g., store it in the database)
#   # For this example, we'll just display the submitted values back to the user
#   "Hello, #{name}! You are #{age} years old."
# end

require 'sinatra'
require 'mysql2'

# Connect to the MySQL server
client = Mysql2::Client.new(
  host: 'localhost',         # Replace with your MySQL server host
  username: 'root', # Replace with your MySQL username
  password: '', # Replace with your MySQL password
  database: 'todo'  # Replace with your desired database name
)


# Create a table if it doesn't exist
client.query("CREATE TABLE IF NOT EXISTS todos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  task VARCHAR(255),
  completed BOOLEAN
);")
# install ruby gem install mysql2 -v '0.5.3' -- --with-mysql-config=$(brew --prefix mysql)/bin/mysql_config --with-ldflags="-L$(brew --prefix zstd)/lib -L$(brew --prefix openssl)/lib" --with-cppflags=-I$(brew --prefix openssl)/include 
# Define a model for the todos table
# class Todo < ActiveRecord::Base
# end

# Display the TODO list
get '/' do
  @todos = Todo.all
  erb :index
end

# Create a new TODO
post '/todos' do
  task = params[:task]
  todo = Todo.new(task: task, completed: false)
  todo.save
  redirect '/'
end

# Update the status of a TODO (mark as completed)
patch '/todos/:id' do
  id = params[:id]
  todo = Todo.find(id)
  todo.update(completed: true)
  redirect '/'
end

# Delete a TODO
delete '/todos/:id' do
  id = params[:id]
  todo = Todo.find(id)
  todo.destroy
  redirect '/'
end
