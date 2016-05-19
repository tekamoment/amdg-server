class SessionsController < ApplicationController
  layout "login"
  
  def new
  end
  
  def create
    temp_user = Manager.find_by(email: params[:session][:email].downcase)
    if !temp_user
      temp_user = Agent.find_by(email: params[:session][:email].downcase)
      if !temp_user
        temp_user = WarehouseStaffer.find_by(email: params[:session][:email].downcase)
      end
    end
    
    user = temp_user
    if user && user.authenticate(params[:session][:password])
      # Log in!
    else
      puts 'login unsuccessful'
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
  
  def destroy
  end
  
end
