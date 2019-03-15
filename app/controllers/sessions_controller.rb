class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:session][:name] == "root" && (root = Root.find_by(name: "root")).authenticate(params[:session][:password]) then
      log_in_root
      flash[:success] = "Logged in successfully"
      redirect_to admin_roots_path
    else
      college = College.find_by(name: params[:session][:name])
      if college && college.authenticate(params[:session][:password])
        log_in_college(college)
        redirect_to competent_path(college)
      else
        flash.now[:danger] = "Invalid name/password combination"
        render action: "new"
      end
    end
  end

  def destroy
    if logged_in_root?
      log_out_root
    else
      log_out_college
    end
    redirect_to root_path
  end
end
