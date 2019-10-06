class AddSubscriptionIdToStudio < ActiveRecord::Migration[5.1]
  def change
  	add_column :studios, :subscription_id, :integer
  end
end
