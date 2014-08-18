class TeamMembershipsController < ApplicationController
  def create
    team = current_user.teams.find(params[:team_id])
    team.team_memberships.create(player_params)
    redirect_to team
  end

  def destroy
    team = current_user.teams.find(params[:team_id])
    player = team.players.find(params[:id])
    team.players.destroy(player)
    redirect_to team
  end

  private

  def player_params
    params.require(:team_membership).permit(:player_id)
  end
end
