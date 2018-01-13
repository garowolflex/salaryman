class WorkingDay < ApplicationRecord
  validates :date, presence: true
end
