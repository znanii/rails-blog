class AddCreator < ActiveRecord::Migration[7.1]
  def change
     add_column :articles, :creator, :string
     add_index :articles, :creator
  end
end
