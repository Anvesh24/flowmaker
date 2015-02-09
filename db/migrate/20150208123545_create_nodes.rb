class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string :topic
      t.string :description

      t.timestamps null: false
    end
  end
end
