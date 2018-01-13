class Work < ApplicationRecord
  belongs_to :working_day

  validates :time, presence: true

  enum category: {
    work: 0,
  }
end
