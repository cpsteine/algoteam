class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :team
      t.string :position
      t.string :opponent
      t.decimal :cost

      t.timestamps null: false
    end
  end
end
