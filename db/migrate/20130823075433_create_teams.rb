class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name, :null => false
      t.integer :win, default: 0 
      t.integer :lose, default: 0
      t.string  :leader
      t.timestamps
    end
  end
end
