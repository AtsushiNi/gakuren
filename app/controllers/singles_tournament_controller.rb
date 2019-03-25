class SinglesTournamentController < ApplicationController
  # ライブスコアページ
  def show
    @tournament = SinglesTournament.first
  end
end
