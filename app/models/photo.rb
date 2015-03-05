class Photo < ActiveRecord::Base
  paginates_per 5

  default_scope { order('updated_at DESC') }

  validates :url, presence: true

  belongs_to :owner, foreign_key: :owner_id, class: User

  has_many :comments
end
