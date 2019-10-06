class AddIndexesToTables < ActiveRecord::Migration[5.1]
  def change
  	# index for studio_addresses
  	add_index :studio_addresses, :country_id
  	add_index :studio_addresses, :studio_id
  	# index for bookings
  	add_index :bookings, :studio_id
  	add_index :bookings, :user_id
  	# index for payments
  	add_index :payments, :country_id
  	# index for booking_breakdowns
  	add_index :booking_breakdowns, :booking_id
  	# index for studios
  	add_index :studios, :subscription_id
  end
end
