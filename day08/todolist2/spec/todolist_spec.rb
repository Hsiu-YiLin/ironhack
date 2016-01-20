require_relative("../lib/todolist.rb")
require_relative("../lib/task.rb")
describe TodoList do

	before :each do

		@tasks = TodoList.new("ME")
		@task1 = Task.new("TASK1")
		@task2 = Task.new("TASK2")
	end

	describe "Add task to array" do
		it "Adds task to array" do
			expect(@tasks.add_task(@task1)).to eq(@task1)
		end
	end

	describe "Delete task at this index" do
		it "Delete task at this index" do
			@tasks.add_task(@task1)
			expect(@tasks.delete_task(0)).to eq(@tasks=[])
		end
	end

	describe "Find task with task id" do
		it "Return task with the task id" do
			@tasks.add_task(@task1)
			expect(@tasks.find_task_by_id(5)).to eq(@task1)
		end
	end

	describe "Sort task by created at in asc order" do
		it "Sort task by created at in asc order" do
			@tasks.add_task(@task1)
			@tasks.add_task(@task2)
			expect(@tasks.sorted_by_created("asc")).to eq([@task1,@task2])
		end
	end
end
