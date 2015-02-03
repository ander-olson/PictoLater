class Profile < ActiveRecord::Base
  validates :owner_id, presence: true

  belongs_to(
    :owner,
    foreign_key: :owner_id,
    class: User
  )
end
