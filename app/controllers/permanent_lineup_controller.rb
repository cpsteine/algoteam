class PermanentLineupController < ApplicationController
  
private  
  def player_params
    params.require(:lineup).permit(:player_1_id, :player_2_id, :player_3_id, :player_4_id, :player_5_id, :player_6_id, :player_7_id, :player_8_id, :player_9_id, :cost, :total)
  end

end
