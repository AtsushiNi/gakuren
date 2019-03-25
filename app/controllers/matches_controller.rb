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
    @match.update_attributes(status: "Playing", start_time: start_time, score: "0-0set-set-", ready: false)
    redirect_to livescore_path
  end

  # スコアアップデート
  def update
    @match = Match.find(params[:match_num])
    @match.update_attributes(score: get_score)
    if (winner = @match.finish?)
      @match.update_attributes(winner_num: winner, status: "Completed", finish_time: Time.zone.now)

      nextTurn_match = Match.find_by(turn: @match.turn + 1, court: @match.court)
      nextTurn_match.update_attributes(ready: true)

      nextRound_match = Match.find(@match.parent_id)
      if @match.next_battle_young? == true
        nextRound_match.update_attributes(young: winner)
      elsif @match.next_battle_young? == false
        nextRound_match.update_attributes(old: winner)
      end
    end
    redirect_to livescore_path
  end

  private

  def get_score
    score = params[:"00"]+"-"+params[:"10"]+"set"+params[:"01"]+"-"+params[:"11"]+ "set" +params[:"02"]+"-"+params[:"12"]
  end
end
