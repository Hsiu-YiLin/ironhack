class AddColumnIngredientIdToSandwichIngredient < ActiveRecord::Migration
  def change
    add_column :sandwich_ingredients, :ingredient_id, :integer
  end
end
