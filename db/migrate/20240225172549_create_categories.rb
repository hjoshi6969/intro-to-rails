class CreateCatogories < ActiveRecord::Migration[7.1]
  def change
    create_table :catogories do |t|
      t.string :name

      t.timestamps
    end
  end
end
