class TimeLog < ApplicationRecord
  belongs_to :user

  validates :summary, presence: true
  validates :time_spent, presence: true
  validates :log_date, presence: true
  

end
