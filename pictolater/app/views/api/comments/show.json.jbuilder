json.extract! @comment, :id, :commenter_id, :photo_id, :updated_at, :created_at, :body
json.author @comment.author.username
