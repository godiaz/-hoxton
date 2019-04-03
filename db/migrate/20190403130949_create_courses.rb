class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :photos
      t.string :description
      t.string :topic
      t.string :summary
      t.string :course_text
      t.string :course_code
      t.string :downloadable_repo
      t.string :solution
      t.string :sku
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
