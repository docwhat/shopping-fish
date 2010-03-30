class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :title, :null => false, :limit => 128

      t.timestamps
    end
    add_index :items, :title, :unique
  end

  def self.down
    remove_index :items, :title
    drop_table :items
  end
end
