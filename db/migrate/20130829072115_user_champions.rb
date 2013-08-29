class UserChampions < ActiveRecord::Migration
  def change
    create_table :user_champions do |t|
      t.integer :user_id
      t.integer :champion_id
      t.timestamps
    end
    
    add_index :user_champions, :user_id
    add_index :user_champions, :champion_id
  end
end