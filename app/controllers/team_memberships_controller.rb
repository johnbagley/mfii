class TeamMembershipsController < ApplicationController
  def create
    team = current_user.teams.find(params[:team_id])
    team.team_memberships.create(player_params)
    redirect_to team
  end

  private

  def player_params
    params.require(:team_membership).permit(:player_id)
  end
end
