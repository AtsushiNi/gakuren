class MatchesController < ApplicationController
  def index
    @matches = Match.all
  end

  def edit
    @match = Match.find(params[:id])
  end

  # 試合開始
  def start
    @match = Match.find(params[:id])
    start_time = Time.zone.now
    @match.update_attributes(status: "Playing", start_time: start_time, score: "0-0set-set-")
    redirect_to livescore_path
  end

  # スコアアップデート
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
