class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :main_programming_language
      t.string :secondary_programming_language

      t.timestamps
    end
  end
end
