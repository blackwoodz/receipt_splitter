class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.integer :event_id
      t.integer :payer_id
      t.string :receipt_img

      t.timestamps

    end
  end
end
