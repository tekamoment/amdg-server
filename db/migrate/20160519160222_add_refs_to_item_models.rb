class AddRefsToItemModels < ActiveRecord::Migration
  def change
    add_reference :item_models, :item_type, index: true, foreign_key: true
  end
end
