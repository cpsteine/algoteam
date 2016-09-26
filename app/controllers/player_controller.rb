class PlayerController < ApplicationController
  
private  
  def player_params
    params.require(:player).permit(:name, :cost, :team, :position, :opponent, :projection)
  end

end
