class JobsController < ApplicationController
  def index
     @jobs =  Job.all

    #  render json: @jobs, include: [:jobs]
       render json: @jobs, status: 200
    
      #  @jobs = jobs.find(params[:id])
      # render :template => "weblog/show"

  end

  def create
    job= Job.new()
    job.name = params[:name]
    job.description = params[:description]
    job.applications = ['5','5']
    job.save
    # render json: jobs, status: 200

     redirect_to '/jobs/', :notice => "Job has been Added"

     #render json: params[:job_post]
  end 

  def new
  end

  def destroy
    job = Job.find(params[:id])
    job.delete
    redirect_to '/jobs', :notice => "Job has been deleted"
  end

  def show
    @job = Job.find(params[:id])
    render json: @job
  end


  def apply
  end


end

