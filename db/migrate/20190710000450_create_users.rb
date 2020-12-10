class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :phone_number
      t.string :password_digest
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
