class CreateUsersAndLogins < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false, unique: true
      t.string :username, null: false, unique: true
      t.string :password_digest, null: false
      t.string :session_token, null: false, unique: true
    end

    create_table :logins do |t|
      t.integer :user_id, null: false
      t.string  :session_token, null: false, unique: true
      t.index   :user_id
      t.index   :session_token
    end
  end
end
