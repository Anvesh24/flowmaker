class AddUserToNodes < ActiveRecord::Migration
  def change
    add_reference :nodes, :user, index: true
    add_foreign_key :nodes, :users
  end
end
