class AddColumnsToNodes < ActiveRecord::Migration
  def change
    add_column :nodes, :nodable_id, :integer
    add_column :nodes, :nodable_type, :string    
  end
end
