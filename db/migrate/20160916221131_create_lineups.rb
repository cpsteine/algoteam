class CreateLineups < ActiveRecord::Migration
  def change
    create_table :lineups do |t|
      t.integer :player_1_id
      t.integer :player_2_id
      t.integer :player_3_id
      t.integer :player_4_id
      t.integer :player_5_id
      t.integer :player_6_id
      t.integer :player_7_id
      t.integer :player_8_id
      t.integer :player_9_id

      t.timestamps null: false
    end
  end
end
