module SessionsHelper
  def log_in
    session[:root] = true
  end

  def log_out
    session[:root] = false
  end
end
