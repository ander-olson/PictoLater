class AddComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :photo_id, null: false
      t.integer :commenter_id, null: false
      t.string  :comment, null: false

      t.timestamps

      t.index   :photo_id
    end
  end
end
