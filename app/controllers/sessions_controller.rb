class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:session][:name] == "root" && (root = Root.find_by(name: "root")).authenticate(params[:session][:password]) then
      log_in
      flash[:success] = "Logged in successfully"
      redirect_to admin_roots_path
    else
      flash.now[:danger] = "Invalid name/password combination"
      render action: "new"
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end
