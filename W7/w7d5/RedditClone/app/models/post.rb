# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  url        :string
#  content    :string
#  sub_id     :integer          not null
#  creator_id :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Post < ApplicationRecord
  validates :title, presence: true
  validates :url, uniqueness: true
  validates :sub_id, presence: true, uniqueness: true
  validates :creator_id, presence: true, uniqueness: true

  belongs_to :sub

  belongs_to :user,
  foreign_key: :creator_id,
  class_name: :User

  has_many :subs,
    foreign_key: :post_id,
    class_name: :PostSub


end
