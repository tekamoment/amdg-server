class InventoriesController < ApplicationController
  
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
    @inventory = Inventory.new
  end
  
  def show
  end
end
