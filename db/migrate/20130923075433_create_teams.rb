class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name, :null => false
      t.string :member
      t.integer :win_count, default: 0 
      t.integer :lose_count, default: 0
      t.string  :leader
      t.string  :image
      t.datetime :matched_at
      t.integer  :comment_id
      t.timestamps
    end
  end
end
