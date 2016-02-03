require "sinatra"
require "sinatra/reloader"
require "pry"

require_relative("lib/task.rb")
require_relative("lib/todolist.rb")

todo_list = TodoList.new("ME")
task = Task.new("Make a cake")
task2 = Task.new("Eat the cake")
task3 = Task.new("Buy cake ingredient")

todo_list.add_task(task)
todo_list.add_task(task1)
todo_list.add_task(task2)
todo_list.add_task(task3)


get "/tasks" do
	@tasks = todo_list.tasks
	erb(:task_index)
end

get "/new_task" do
	erb(:new_task)
end

post "/create_task" do
	new_task = params[:task]
	@todo_list(Task.new(new_task))

	redirect to("/")
end