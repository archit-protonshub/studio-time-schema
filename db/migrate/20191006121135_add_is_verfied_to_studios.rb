class AddIsVerfiedToStudios < ActiveRecord::Migration[5.1]
  def change
  	add_column :studios, :is_verified, :boolean
  end
end
