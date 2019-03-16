class SinglesTournamentController < ApplicationController
  def show
    @tournament = SinglesTournament.first
  end
end
