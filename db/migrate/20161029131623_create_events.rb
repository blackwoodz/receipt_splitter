class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :organizer_id

      t.timestamps

    end
  end
end
