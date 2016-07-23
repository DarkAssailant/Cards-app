class Mrf < ActiveRecord::Base
  belongs_to :developer
  belongs_to :pss
  #validates :developer_id, presence: true
  #validates :pss_id, presence: true
  self.primary_key = :mrf_number
end
