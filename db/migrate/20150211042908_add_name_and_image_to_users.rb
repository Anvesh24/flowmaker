class AddNameAndImageToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :image, :string
    add_column :users, :email, :string
  end
end
