class WorkingDay < ApplicationRecord
  has_many :works, dependent: :destroy

  validates :date, presence: true
end
