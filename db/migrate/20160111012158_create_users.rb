class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :first_name
      t.string :last_name
      t.string :login_id
      t.string :password_digest
      t.string :role

      t.timestamps null: false
    end
    add_index :users, :login_id, unique: true
  end
end