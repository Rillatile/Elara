class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :surname
      t.string :name
      t.string :patronymic
      t.integer :sex
      t.datetime :birthday

      t.timestamps
    end
  end
end
