class AddReceiptCountToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :receipts_count, :integer
  end
end
