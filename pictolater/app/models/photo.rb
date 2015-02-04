class Photo < ActiveRecord::Base
  validates :url, presence: true

  belongs_to(
    :owner,
    foreign_key: :owner_id,
    class: User
  )
end
