require 'mysql2'

# Connect to the MySQL server
$client = Mysql2::Client.new(
  host: 'localhost',
  username: 'root',
  password: '',
  database: 'todo'
)

# Create the todos table if it doesn't exist
$client.query('CREATE TABLE IF NOT EXISTS todos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  task VARCHAR(255),
  completed BOOLEAN
);')
def create_task(task, completed = false)
    $client.query('INSERT INTO todos (task, completed) VALUES (?, ?)', [task, completed ? 1 : 0])
  end
def read_all_tasks
  $client.query('SELECT * FROM todos')
end

def update_task(id, task, completed)
  $client.query('UPDATE todos SET task = ?, completed = ? WHERE id = ?', [task, completed ? 1 : 0, id])
end

def delete_task(id)
  $client.query('DELETE FROM todos WHERE id = ?', [id])
end

def display_tasks
  tasks = read_all_tasks
  tasks.each do |task|
    puts "#{task['id']}. #{task['task']} [#{task['completed'] == 1 ? 'Completed' : 'Pending'}]"
  end
end

loop do
  puts "\nTODO List:"
  display_tasks

  puts "\nOptions:"
  puts "1. Add a task"
  puts "2. Mark a task as completed"
  puts "3. Delete a task"
  puts "4. Exit"
  print "Enter your choice: "
  choice = gets.chomp.to_i

  case choice
  when 1
    print "Enter the task: "
    task = gets.chomp
    create_task(task)
    puts "Task added successfully!"
  when 2
    print "Enter the task ID to mark as completed: "
    task_id = gets.chomp.to_i
    update_task(task_id, nil, true)
    puts "Task marked as completed!"
  when 3
    print "Enter the task ID to delete: "
    task_id = gets.chomp.to_i
    delete_task(task_id)
    puts "Task deleted!"
  when 4
    puts "Exiting..."
    break
  else
    puts "Invalid choice. Try again."
  end
end
