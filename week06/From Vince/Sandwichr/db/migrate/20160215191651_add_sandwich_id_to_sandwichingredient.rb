class AddSandwichIdToSandwichingredient < ActiveRecord::Migration
  def change
    add_column :sandwich_ingredients, :sandwich_id, :integer
  end
end
