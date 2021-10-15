class Sub < ApplicationRecord

  validates :title, :description, presence: true
  validates :creator_id, presence: true, uniqueness: true

  belongs_to :moderator,
    foreign_key: :creator_id,
    class_name: :User

end
