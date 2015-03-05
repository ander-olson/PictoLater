class Subscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :followee_id, null: false
      t.integer :follower_id, null: false
      t.index   :followee_id
      t.index   :follower_id
    end
  end
end
