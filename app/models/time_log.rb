class TimeLog < ApplicationRecord
  belongs_to :user
  
  validates :summary, presence: true, length: { maximum: 240 }
  validates :time_spent, presence: true
  validates :log_date, presence: true
 
end
