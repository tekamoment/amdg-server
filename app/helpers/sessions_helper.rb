module SessionsHelper
    def log_in(user, user_type)
        session[:user_id] = user.id
        session[:user_type] = user_type
    end
    
    def current_user
        if @current_user.nil?
            if session[:user_type] == "manager"
                @current_user = Manager.find_by(id: session[:user_id])
            elsif session[:user_type] =="warehouse_staffer"
                @current_user = WarehouseStaffer.find_by(id: session[:user_id])
            else
                @current_user = Agent.find_by(id: session[:user_id])
            end
        else
            @current_user
        end 
        
    end
    
    def user_type
        @user_type ||= session[:user_type]
    end
    
    def logged_in?
        !current_user.nil?
    end
    
    def log_out
        session.delete(:user_id)
        session.delete(:user_type)
        @current_user = nil
        @user_type = nil
    end
end
