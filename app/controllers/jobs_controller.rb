class JobsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create 
    new_job = Job.create(employer_name: "company x", employer_description: "we do xyx", job_title: "you do this", 
      job_description: "do it good", year_of_experience: 10, base_salary: 50000) 
      

    render json: {job: new_job}
  end
end
