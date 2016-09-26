class ChangeDataTypePlayersCost < ActiveRecord::Migration
  def change
   
    change_column :players, :cost, :float
    change_column :players, :projection, :float
    change_column :lineups, :total, :float
    
  end
end
