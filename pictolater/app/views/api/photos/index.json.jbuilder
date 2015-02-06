json.photos @photos do |photo|
  json.extract! photo, :id, :owner_id, :url, :updated_at, :created_at, :cloudinary_id
  json.extract! photo.owner, :username
  json.comments photo.comments do |comment|
    json.extract! comment, :id, :commenter_id, :body, :created_at, :updated_at
    json.author comment.author.username
  end
end
