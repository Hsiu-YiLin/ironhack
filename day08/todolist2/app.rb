require "sinatra"
require "sinatra/reloader"
require "pry"

require_relative("lib/task.rb")
require_relative("lib/todolist.rb")

@todo_list = TodoList.new("ME")
@todo_list.load_tasks

get "/tasks" do
	binding.pry
	@tasks = @todo_list.load_tasks
	erb(:task_index)
	binding.pry
end

get "/new_task" do
	erb(:new_task)
end

post "/create_task" do
	new_task = params[:task]
	@todo_list(Task.new(new_task))

	redirect to(:task_index)
end