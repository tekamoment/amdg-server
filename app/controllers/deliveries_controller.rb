class DeliveriesController < ApplicationController
  
  autocomplete :supplier, :supplier_name, :extra_data => [:id]
  
  before_filter :require_warehouse_staffer, :only => [:create]
  before_filter :require_non_warehouse_staffer, :only => [:show]
  
  def require_warehouse_staffer
    unless user_type == "warehouse_staffer"
      redirect_to root_path
    end
  end
  
  def require_non_warehouse_staffer
    if user_type == "warehouse_staffer"
      redirect_to root_path
    end
  end
  
  
  def create
    date_delivered = params[:date_delivered]
    time_delivered = params[:time_delivered]
  end
end
