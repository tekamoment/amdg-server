class AddRefsToAgents < ActiveRecord::Migration
  def change
    add_reference :agents, :client, index: true, foreign_key: true
  end
end
