class AddTotalToLineup < ActiveRecord::Migration
  def change
    add_column :lineups, :total, :decimal
  end
end
