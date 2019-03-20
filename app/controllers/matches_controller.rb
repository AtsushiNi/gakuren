class MatchesController < ApplicationController
  def index
    @matches = Match.all
  end

  def edit
    @match = Match.find(params[:id])
  end

  def update
    @match = Match.find(params[:match_num])
    @match.update_attributes(score: get_score)
    redirect_to livescore_path
  end

  private

  def get_score
    score = params[:"00"]+"-"+params[:"10"]+"set"+params[:"01"]+"-"+params[:"11"]+ "set" +params[:"02"]+"-"+params[:"12"]
  end
end
