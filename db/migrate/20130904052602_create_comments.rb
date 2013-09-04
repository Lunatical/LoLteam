class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :user_id
      t.string :body
      t.integer :content_id
      t.string :content_type
      
      t.timestamps
    end
  end
end
