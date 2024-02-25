class CreateCategoryBreeds < ActiveRecord::Migration[7.1]
  def change
    create_table :category_breeds do |t|
      t.integer :breed_id
      t.integer :catagory_id

      t.timestamps
    end
  end
end
