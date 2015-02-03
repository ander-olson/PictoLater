class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :owner_id, unique: true
      t.string  :title
      t.index   :owner_id
    end
  end
end
