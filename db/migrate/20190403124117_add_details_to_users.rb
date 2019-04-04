class AddDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :instructor, :boolean, default: false
    add_column :users, :student, :boolean, default: true
    add_column :users, :photo, :string
    add_column :users, :bio, :string
  end
end
