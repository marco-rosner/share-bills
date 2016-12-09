class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :bank
      t.integer :agency
      t.integer :number
      t.integer :user_id

      t.timestamps
    end
  end
end
