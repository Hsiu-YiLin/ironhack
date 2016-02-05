class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
    	t.string :artist
    	t.string :city
    	t.datetime :date
    	t.float :price
    	t.text :description
		t.timestamps null: false
    end
  end
end
