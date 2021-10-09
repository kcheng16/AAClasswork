class Cat < ApplicationRecord
  validates :birth_date, :color, :name, :sex, presence: true
  validates :color, inclusion: { in: ['Red', 'Green', 'Blue'] }
  validates :sex, inclusion: { in: ['M', 'F'] }
  
end
