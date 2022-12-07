class Job < ApplicationRecord
  validates :employer_name, presence: true
  validates :job_title, presence: true
  validates :base_salary, presence: true

end
