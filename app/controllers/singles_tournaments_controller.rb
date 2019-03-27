class SinglesTournamentsController < ApplicationController

  def index
    @tournaments = SinglesTournament.all
  end

  def show
    @tournament = SinglesTournament.find(params[:id])
  end

end
