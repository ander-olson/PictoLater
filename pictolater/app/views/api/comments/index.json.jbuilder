fail

json.comments @comments do |comment|
  json.extract! comment, :id, :commenter_id, :photo_id, :updated_at, :created_at, :body
  json.extract! comment.author, :username
end
