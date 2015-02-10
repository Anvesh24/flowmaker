class AddParentToNodes < ActiveRecord::Migration
  def change
    add_reference :nodes, :parent, index: true
    add_foreign_key :nodes, :parents
  end
end
