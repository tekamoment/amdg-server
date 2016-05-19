class AddRefsToClients < ActiveRecord::Migration
  def change
    add_reference :clients, :agent, index: true, foreign_key: true
  end
end
