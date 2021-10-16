# == Schema Information
#
# Table name: subs
#
#  id          :bigint           not null, primary key
#  title       :string           not null
#  description :string           not null
#  creator_id  :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Sub < ApplicationRecord

  validates :title, :description, presence: true
  validates :creator_id, presence: true, uniqueness: true

  belongs_to :moderator,
    foreign_key: :creator_id,
    class_name: :User

  has_many :posts

  has_many :sub_posts,
    foreign_key: :sub_id,
    class_name: :PostSub

end
