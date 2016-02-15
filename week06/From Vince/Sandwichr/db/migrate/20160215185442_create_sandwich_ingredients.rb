class CreateSandwichIngredients < ActiveRecord::Migration
  def change
    create_table :sandwich_ingredients do |t|

      t.timestamps null: false
    end
  end
end
