class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
    	t.string :response_rate
    	t.string :response_time
      t.integer :daily_views
      t.timestamps
    end
  end
end
