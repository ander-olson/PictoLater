class Comment < ActiveRecord::Base
  validates :photo_id, :commenter_id, :body, presence: true

  belongs_to :author, foreign_key: :commenter_id, class: User
end
