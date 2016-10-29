class AddOrganizedEventCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :organized_events_count, :integer
  end
end
