require_relative 'todo'

def display_tasks
  tasks = Todo.read_all_tasks
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
    Todo.create_task(task)
    puts "Task added successfully!"
  when 2
    print "Enter the task ID to mark as completed: "
    task_id = gets.chomp.to_i
    Todo.update_task(task_id, nil, true)
    puts "Task marked as completed!"
  when 3
    print "Enter the task ID to delete: "
    task_id = gets.chomp.to_i
    Todo.delete_task(task_id)
    puts "Task deleted!"
  when 4
    puts "Exiting..."
    break
  else
    puts "Invalid choice. Try again."
  end
end
