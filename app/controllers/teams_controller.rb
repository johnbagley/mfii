class TeamsController < ApplicationController
  def show
    @team = current_user.teams.find(params[:id])
  end
  def create
    team = current_user.teams.create(team_params)
    redirect_to team
  end

  private

  def team_params
    params.require(:team).permit(:name).merge(user_id: current_user.id)
  end
end
