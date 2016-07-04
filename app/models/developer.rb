class Developer < ActiveRecord::Base
    validates :soid, presence: true, length: { minimum: 6, maximum: 35}
    validates :name, presence: true, length: { minimum: 5, maximum: 60}
end