class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :return
      t.integer :program_id
      t.string :address
      t.string :phone

      t.timestamps null: false
    end
  end
end
