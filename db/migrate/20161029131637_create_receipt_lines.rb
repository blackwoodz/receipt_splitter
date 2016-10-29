class CreateReceiptLines < ActiveRecord::Migration
  def change
    create_table :receipt_lines do |t|
      t.integer :claimer_id
      t.string :description
      t.float :line_value
      t.integer :receipt_id

      t.timestamps

    end
  end
end
