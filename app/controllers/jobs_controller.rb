class JobsController < ApplicationController
  skip_before_action :verify_authenticity_token
  # def create 
  #   new_job = Job.create(employer_name: "company x", employer_description: "we do xyx", job_title: "you do this", 
  #     job_description: "do it good", year_of_experience: 10, base_salary: 50000) 
      

  #   render json: {job: new_job}

  # end

  def create
    @job = Job.new(job_params)
    if @job.save
      #render 'job/create' 
    end
  end

  def index
    @jobs = Job.all
    render json: {job: Job.all}
  end

  def find
    @jobs = Job.all
    render json: {job: Job.find(2)}
    # @job = Job.find_by(id: params[:id])
    # render json: {job: Job.find(@job)}
  end


  def job_params
    params.require(:task).permit(:content)
  end

end
