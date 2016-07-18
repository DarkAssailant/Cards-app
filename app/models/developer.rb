class Developer < ActiveRecord::Base
    has_many :mrves
    validates :soid, presence: true, length: { minimum: 6, maximum: 35}
    validates :name, presence: true, length: { minimum: 5, maximum: 60}
end
