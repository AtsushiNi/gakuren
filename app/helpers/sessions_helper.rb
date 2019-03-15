module SessionsHelper
  def log_in_root
    session[:root] = true
  end

  def log_out_root
    session[:root] = false
  end

  def logged_in_root?
    session[:root]
  end

  def log_in_college(college)
    session[:college_id] = college.id
  end

  def current_college
    if session[:college_id]
      @current_college ||= College.find_by(id: session[:college_id])
    end
  end

  def logged_in_college?
    !current_college.nil?
  end

  def log_out_college
    session.delete(:college_id)
    @current_college = nil
  end
end
