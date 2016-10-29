class AddAttendanceCountToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :attendances_count, :integer
  end
end
