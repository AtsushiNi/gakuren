class RankingsController < ApplicationController
  def index
    @rankings = Ranking.all.order(:created_at)
  end
end
