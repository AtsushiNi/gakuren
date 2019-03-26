class RankingsController < ApplicationController
  def index
    @rankings = Ranking.all.order(:created_at)
  end

  def show
    @ranking = Ranking.find(params[:id])
    @data = @ranking.to_a #Ranking.dataをハッシュの配列にして渡す
  end
end
