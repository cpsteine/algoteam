class RenamePermenantLineupsToPermanentLineups < ActiveRecord::Migration
  def change
       rename_table :permenant_lineups, :permanent_lineups
  end
end
