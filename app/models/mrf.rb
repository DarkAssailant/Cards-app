class Mrf < ActiveRecord::Base
  belongs_to :developer
  belongs_to :pss
  #validates :developer_id, presence: true
  #validates :pss_id, presence: true
  validates :mrf_number, uniqueness: true
  validates :defect_counter, presence: true
  validates :asset_updates, presence: true
  self.primary_key = :mrf_number
end
