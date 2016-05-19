module SessionsHelper
    def log_in(user, user_type)
        session[:user_id] = user.id
        session[:user_type] = user_type
    end
    
    def current_user
        @current_user ||= (Manager.find_by(id: session[:user_id]) || 
                            WarehouseStaffer.find_by(id: session[:user_id]) ||
                            Agent.find_by(id: session[:user_id]))
    end
    
    def user_type
        #if Manager.find_by(id: session[:user_id]) != nil
        #    @user_type = :manager
        #elsif WarehouseStaffer.find_by(id: session[:user_id]) != nil
        #    @user_type = :warehouse_staffer
        #elsif Agent.find_by(id: session[:user_id]) != nil
        #    @user_type = :agent
        #else
        #    @user_type = nil
        #end
        @user_type ||= session[:user_type]
    end
    
    def logged_in?
        !current_user.nil?
    end
end
