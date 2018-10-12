class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.boolean :email_private
      t.string :first_name
      t.string :last_name
      t.date :birthday

      t.timestamps
    end
  end
end
