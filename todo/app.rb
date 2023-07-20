require 'sinatra'
require 'mysql2'

# Connect to the MySQL server
client = Mysql2::Client.new(
  host: 'localhost',
  username: 'root',
  password: '',
  database: 'todo'
)

# Define a model for the todos table
class Todo
  attr_accessor :id, :task, :completed

  def initialize(id, task, completed)
    @id = id
    @task = task
    @completed = completed
  end
end

# ... Rest of the code ...

# Display the TODO list
get '/' do
  @todos = client.query('SELECT * FROM todos')
  erb :index
end

# Create a new TODO
post '/todos' do
  task = params[:task]
  client.query("INSERT INTO todos (task, completed) VALUES ('#{task}', false)")
  redirect '/'
end

# Update the status of a TODO (mark as completed)
patch '/todos/:id' do
  id = params[:id]
  client.query("UPDATE todos SET completed = true WHERE id = #{id}")
  redirect '/'
end

# Delete a TODO
delete '/todos/:id' do
  id = params[:id]
  client.query("DELETE FROM todos WHERE id = #{id}")
  redirect '/'
end
