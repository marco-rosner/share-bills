class CreateBills < ActiveRecord::Migration[5.0]
  def change
    create_table :bills do |t|
      t.string :place
      t.float :value
      t.timestamp :date
      t.integer :user_id

      t.timestamps
    end
  end
end
