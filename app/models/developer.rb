class Developer < ActiveRecord::Base
    self.primary_key = 'soid'
    has_many :mrves
    validates :soid, uniqueness:true, length: { minimum: 3, maximum: 35}
    validates :name, presence: true, length: { minimum: 5, maximum: 60}
end
