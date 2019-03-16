class MatchesController < ApplicationController
  def index
    @matches = Match.all
  end

  def edit
    @match = Match.find(params[:id])
  end

  def update
  end
end
