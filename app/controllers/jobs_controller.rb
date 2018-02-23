class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  # GET /jobs
  # GET /jobs.json
  def index
    if params[:search]
      @jobs = Job.search(params[:search])
    else
      @jobs = Job.all
    end
  end

  # GET /jobs/1
  # GET /jobs/1.json
  def show
  end

  # TODO: show error message when job seeker tries to edit/delete/create jobs

  # GET /jobs/new
  def new
    if current_ruser == nil
      redirect_to action: :index
    end
    @job = Job.new
  end

  # GET /jobs/1/edit
  def edit
    if current_ruser == nil
      redirect_to action: :index
    end
  end

  # POST /jobs
  # POST /jobs.json
  def create
    if current_ruser == nil
      redirect_to action: :index
    end
    @job = Job.new(job_params)

    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: 'Job was successfully created.' }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1
  # PATCH/PUT /jobs/1.json
  def update
    if current_ruser == nil
      redirect_to action: :index
    end
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    if current_ruser == nil
      redirect_to action: :index
    else
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url, notice: 'Job was successfully destroyed.' }
      format.json { head :no_content }
    end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
      params.require(:job).permit(:title, :description, :employment_type, :requirements, :responsibilities, :company_id, :recruiter_id)
    end
end
