class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.integer :role_id
      t.integer :site_id

      t.timestamps
    end
  end
end
