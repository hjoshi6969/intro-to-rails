class CreateBreedsCategories < ActiveRecord::Migration[YourRailsVersion]
  def change
    create_table :breeds_categories, id: false do |t|
      t.belongs_to :breed, null: false, foreign_key: true
      t.belongs_to :catogory, null: false, foreign_key: true
    end

    add_index :breeds_categories, [:breed_id, :catagory_id], unique: true
  end
end
