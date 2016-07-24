class Pss < ActiveRecord::Base
  has_many :mrves
  validates :name, presence: true, length: { minimum: 6}, uniqueness: true
end
