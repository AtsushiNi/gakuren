class CollegesController < ApplicationController
  # before_action :require_college_login, only: [:competent_edit, :competent_entry]

  def index
    @colleges = College.all
  end

  def competent_edit
    @college = College.find(params[:id])
  end

  def competent_update
    @college = College.find(params[:id])
    if @college.update_attributes(college_params)
      flash[:success] = "updated successfully"
      redirect_to "/colleges/#{@college.id}/competent/edit"
    else
      p @college.errors
      redirect_to competent_path
    end
  end

  def competent_entry
    @college = College.find(params[:id])
  end


  private

  def require_college_login
    unless logged_in_college?
      redirect_to login_path
    end
  end

  def college_params
    params.require(:college).permit(:players_num, :email, :captain, :competent)
  end
end
