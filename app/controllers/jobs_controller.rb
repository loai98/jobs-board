class JobsController < ApplicationController
  def index
     @jobs =  Job.all
      render json: @jobs, status: 200
      # render :template => "weblog/show"
  end

  def create
    job= Job.new()
    job.name = params[:name]
    job.description = params[:description]
    job.save
  end 

  def edit
    job= Job.find(params[:id])? Job.find(params[:id]):false
    if job
      job.name = params[:name]? params[:name]:job.name
      job.description = params[:description]? params[:description]:job.description
      job.save
    end
  end 

  def new
  end

  def destroy
    job = Job.find(params[:id])
    job.delete
    # redirect_to '/jobs', :notice => "Job has been deleted"
  end

  def show
    @job = Job.find(params[:id])
    render json: @job
  end


  def apply
     application= Application.new()
     application.user_id = current_user.id
     application.job_id = params[:id]
     application.save
  end

  def applications
    applications = Application.all
    render json: applications

    #  @TODO 
    #  Try to retrieve user and job data related to applications
    # render json: Job.joins(:applications_)
    # render json:  Job.joins(:applications_).select('applications_.id')
    #  render json: Job.joins(:users)
    # render json: Job.joins(:applications_).select("applications_.ids")
    # render Application.joins(:jobs)
    # render Application.joins(:users).where(user_id: :users:id )
  end

  def jobApplication
    render json: Application.where(job_id: params[:id])
  end

  def application
    application = Application.find(params[:id])
    application.status =true
    application.save
    render json: application
  end
  

end

