class RenamePublicIdInPhotos < ActiveRecord::Migration
  def change
    rename_column :photos, :public_id, :cloudinary_id
  end
end
