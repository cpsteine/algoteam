class AddCostToLineup < ActiveRecord::Migration
  def change
    add_column :lineups, :cost, :float
  end
end
