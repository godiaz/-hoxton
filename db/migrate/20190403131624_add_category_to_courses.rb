class AddCategoryToCourses < ActiveRecord::Migration[5.2]
  def change
    add_reference :courses, :category, foreign_key: true
  end
end
