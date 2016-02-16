class AddTotalCaloriesToSandwiches < ActiveRecord::Migration
  def change
    add_column :sandwiches, :total_calories, :integer, default: 0
  end
end
