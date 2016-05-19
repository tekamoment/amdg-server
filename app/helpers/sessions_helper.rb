module SessionsHelper
    def log_in(user)
        session[:user_id] = user.id
        #if user.instance_of? Agent
        #    session[:user_type] = :agent
        #elsif user.instance_of? WarehouseStaffer
        #    session[:user_type] = :warehouse_staffer
        #else
        #    session[:user_type] = :manager
        #end
    end
    
    def current_user
        @current_user ||= (Manager.find_by(id: session[:user_id]) || 
                            WarehouseStaffer.find_by(id: session[:user_id]) ||
                            Agent.find_by(id: session[:user_id]))
    end
    
    def user_type
        if Manager.find_by(id: session[:user_id]) != nil
            @user_type = :manager
        elsif WarehouseStaffer.find_by(id: session[:user_id]) != nil
            @user_type = :warehouse_staffer
        elsif Agent.find_by(id: session[:user_id]) != nil
            @user_type = :agent
        else
            @user_type = nil
        end
    end
    
    def logged_in?
        !current_user.nil?
    end
end
