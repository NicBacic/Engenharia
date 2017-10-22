class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :password_digest
      t.string :email
      t.string :activation_digest
      t.boolean :activated
      t.datetime :activated_at     

      t.timestamps
    end
  end
end
