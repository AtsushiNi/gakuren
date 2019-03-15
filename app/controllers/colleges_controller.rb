class CollegesController < ApplicationController
  def index
    @colleges = College.all
  end

  def competent
    @college = College.find(params[:id])
  end
end
