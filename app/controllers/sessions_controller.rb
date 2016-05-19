class SessionsController < ApplicationController
  layout "login"
  
  skip_before_filter :require_login
  
  def new
  end
  
  def create
    temp_user = Manager.find_by(email: params[:session][:email].downcase)
    temp_type = :manager
    if !temp_user
      temp_user = Agent.find_by(email: params[:session][:email].downcase)
      temp_type = :agent
      if !temp_user
        temp_user = WarehouseStaffer.find_by(email: params[:session][:email].downcase)
        temp_type = :warehouse_staffer
      end
    end
    
    user = temp_user
    user_type = temp_type
    if user && user.authenticate(params[:session][:password])
      # Log in!
      log_in(user, user_type)
      redirect_to root_path
    else
      puts 'login unsuccessful'
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
  
  def destroy
    log_out
    redirect_to login_path
  end
  
end
