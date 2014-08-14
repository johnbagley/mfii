class DashboardsController < ApplicationController
  def show
    @team = Team.new
    @teams = current_user.teams
  end
end
