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
      redirect_to competent_edit_path
    end
  end

  def competent_entry
    @college = College.find(params[:id])
    @tournaments = SinglesTournament.where("entry_start < ?",Time.current).where("entry_end > ?",Time.current)
  end

  def entry_new
    @college = College.find(params[:college_id])
    @tournament = SinglesTournament.find(params[:id])
    @members = @college.club_members.order(:addmission_year)
  end

  def entry_create
    @college = College.find(params[:college_id])
    @tournament = SinglesTournament.find(params[:id])
    @tournament.entry(@college.initial_name, @college.club_members, params[:post][:members])
    redirect_to "/colleges/#{@college.id}/competent/entry"
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
