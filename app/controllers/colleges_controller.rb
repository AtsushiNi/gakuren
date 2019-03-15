class CollegesController < ApplicationController
  def index
    @colleges = College.all
  end

  def competent_edit
    @college = College.find(params[:id])
  end

  def competent_entry
    @college = College.find(params[:id])
  end
end
