class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :owner_id, null: false
      t.string  :url, null: false
      t.index   :owner_id
    end
  end
end
