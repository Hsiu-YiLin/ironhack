class Task
    attr_reader :content, :id, :complete

    @@current_id = 1
    def initialize(content)
    	@content = content
        @id = @@current_id
        @@current_id += 1
        @complete = false
        @created_at = Time.now
        @updated_at
    end

    def complete?
    	@complete
    end

    def complete!
    	@complete=true
    end

    def make_incomplete!
    	@complete=false
    end

    def created_at
    	@created_at
    end

    def update_content!(new_task)
    	@updated_at=Time.now
    	@content = new_task
    end

    def updated_at
    	@updated_at
    end
end

   