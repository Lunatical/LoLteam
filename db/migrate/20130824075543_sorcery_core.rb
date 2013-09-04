class SorceryCore < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :email,     :null => false
      t.string :name
      t.string :crypted_password
      t.string :salt
      
      t.string :game_nickname
      t.string :top
      t.string :ap
      t.string :jungle
      t.string :mom
      t.string :ad         
      t.integer :team_id
      t.integer :comment_id
      
      t.timestamps
    end
    
    add_index :users, :comment_id
    add_index :users, :team_id
  end

  def self.down
    remove_index :users, :team_id
    drop_table :users
  end
end