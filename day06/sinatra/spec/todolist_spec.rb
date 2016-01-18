require_relative("../lib/todolist.rb")
describe TodoList do
	before :each do
		@tasks = TodoList.new
	end

	describe "Add task to array" do
		it "Adds task to array" do
			expect(@tasks.push(task)).to eq(task)
		end
	end
end
