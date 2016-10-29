class AddReceiptLineCountToReceipts < ActiveRecord::Migration[5.0]
  def change
    add_column :receipts, :receipt_lines_count, :integer
  end
end
