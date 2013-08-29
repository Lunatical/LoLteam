class CreateMychampions < ActiveRecord::Migration
  def change
    create_table :mychampions do |t|
      t.belongs_to :users
      t.string :champions_id
      t.timestamps
    end
  end
end
