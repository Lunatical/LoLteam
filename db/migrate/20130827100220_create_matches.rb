class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string   :title
      t.integer  :loser_id
      t.integer  :l_k_count
      t.integer  :l_d_count
      t.integer  :l_a_count
      t.integer  :winner_id
      t.integer  :w_k_count
      t.integer  :w_d_count
      t.integer  :w_a_count
      t.datetime :matched_at
      t.timestamps
    end
  end
end
