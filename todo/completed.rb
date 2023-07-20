require 'mysql2'
require 'io/console'

# Database configuration
db = Mysql2::Client.new(
  host: 'localhost',
  username: 'root', # Replace with your MySQL username
  password: '',     # Replace with your MySQL password
  database: 'todo'  # Replace with your database name
)

# Function to escape single quotes in SQL queries
def escape_quotes(text)
    
    text.gsub("'", "''")
end

# Function to add a task
def add_task(db, title)
  db.query("INSERT INTO tasks (title) VALUES ('#{escape_quotes(title)}')")
end

# Function to mark a task as completed
def mark_as_completed(db, task_id)
  db.query("UPDATE tasks SET completed = TRUE WHERE id = #{task_id}")
end

# Function to list all tasks
def list_tasks(db)
  result = db.query('SELECT * FROM tasks')
  result.each do |task|
    status = task['completed'] == 1 ? '[X]' : '[ ]'
    puts "#{task['id']} #{status} #{task['title']}"
  end
end

# Function to delete a task
def delete_task(db, task_id)
  db.query("DELETE FROM tasks WHERE id = #{task_id}")
end

# Main function
def main(db)
  loop do
    puts "Todo Console:"
    puts "1. Add task"
    puts "2. Mark as completed"
    puts "3. List tasks"
    puts "4. Delete task"
    puts "q. Quit"

    print "Enter your choice: "
    choice = gets.chomp

    case choice
    when '1'
      print "Enter task title: "
      title = gets.chomp
      add_task(db, title)
    when '2'
      print "Enter task ID to mark as completed: "
      task_id = gets.chomp.to_i
      mark_as_completed(db, task_id)
    when '3'
      list_tasks(db)
    when '4'
      print "Enter task ID to delete: "
      task_id = gets.chomp.to_i
      delete_task(db, task_id)
    when 'q'
      break
    else
      puts "Invalid choice. Please try again."
    end
  end
end

# Run the main function
main(db)
