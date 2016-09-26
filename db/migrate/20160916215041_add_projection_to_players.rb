class AddProjectionToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :projection, :decimal
  end
end
