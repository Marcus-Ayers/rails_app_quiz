class Job < ApplicationRecord
  validates :employer_name, presence: true

end
