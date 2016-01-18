
require_relative("../lib/task.rb")

describe Task do
  before :each do
    @task1 = Task.new("Do this")

  end

	describe "Increase task number" do
    it "Increments task number by one" do
      expect(@task1.id).to eq(1)
	  end
  end

  describe "Task completion status?" do
    it "Task is either compeleted or incomplete" do
      
      expect(@task1.complete?).to eq(false)
    end
  end

  describe "Task completed status" do
    it "Task is complete" do
      expect(@task1.complete!).to eq(true)
    end
  end

  describe "Task incomplete" do
    it "Makes task incomplete" do
      expect(@task1.make_incomplete!).to eq(false)
    end
  end

  describe "Time now" do
    it "Makes the time when task was created" do
      now = Time.now
      allow(Time).to receive(:now).and_return(now)
      expect(@task1.created_at).to eq(now)
    end
  end
end