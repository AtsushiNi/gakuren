class ClubMembersController < ApplicationController
  def index
    @college = College.find(params[:id])
    @club_members = @college.club_members.order(:addmission_year)
  end

  def new
    @college = College.find(params[:id])
    @club_member = @college.club_members.new
  end

  def create
    @college = College.find(params[:id])
    @club_member = @college.club_members.new(club_member_params)
    if @club_member.save
      redirect_to "/colleges/#{@college.id}/competent/club_members"
    else
      render action: :new
    end
  end

  def edit
    @college = College.find(params[:college_id])
    @club_member = @college.club_members.find(params[:id])
  end

  def update
    college = College.find(params[:college_id])
    @club_member = college.club_members.find(params[:id])
    if @club_member.update_attributes(club_member_params)
      redirect_to "/colleges/#{college.id}/competent/club_members"
    else
      render action: :edit
    end
  end

  def destroy
    @college = College.find(params[:college_id])
    club_member = @college.club_members.find(params[:id])
    if club_member.destroy
      flash[:notice] = "Member was successfully destroyed."
    else
      flash[:error] = "Couldn't destroy member"
    end
    redirect_to request.referrer
  end

  private

  def club_member_params
    params.require(:club_member).permit(:name, :addmission_year)
  end
end
