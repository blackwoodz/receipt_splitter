class AddReceiptLineCountToAttendances < ActiveRecord::Migration[5.0]
  def change
    add_column :attendances, :receipt_lines_count, :integer
  end
end
