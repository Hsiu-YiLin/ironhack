require "yaml/store"
require_relative("task.rb")

class TodoList
	attr_reader :tasks

    def initialize(user)
        @user = user
        @tasks = []
        @todo_store = YAML::Store.new("./public/tasks.yml")
    end

    def add_task(task)
    	@tasks.push(task)
    	@tasks
    end

    def delete_task(number_task)
    	@tasks.delete_at(number_task)
    	@tasks
    end

    def find_task_by_id(task_id)
    	new_array = []
		new_array = @tasks.select {|task| task.id == task_id}
		if new_array == nil 
			puts "Tasks not found"
			else
				new_array
		end
	end

	def sorted_by_created(order)
		sorted_array = []
		if order.downcase == "asc"
			sorted_array = @tasks.sort {|task1, task2| task1.created_at <=> task2.created_at}
			else 
				sorted_array = @tasks.sort {|task1, task2| task2.created_at <=> task1.created_at}
		end

		sorted_array
	end
	def save
		@todo_store.transaction do 
			@todo_store[@user] = @tasks
	  		end
	end

	def load_tasks
		if @tasks == []
			return add_task(Task.new("There's no tasks"))
		else
			return @tasks
		end 
		binding.pry
	end
end 