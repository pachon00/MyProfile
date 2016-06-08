class WorksController < ApplicationController
  #before_action :set_work, only: [:show, :edit, :update, :destroy]
  before_action :set_work, only: [:update, :destroy, :show]
  before_action :set_profile
  
  # GET /works/1
  # GET /works/1.json
  def show
  end
  # POST /works
  # POST /works.json
  def create
    @work = Work.new(work_params)
    @work.profile = @profile
    respond_to do |format|
      if @work.save
        format.html { redirect_to @work.profile, notice: 'Work was successfully created.' }
        format.json { render :show, status: :created, location: @work.profile }
      else
        format.html { render :new }
        format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /works/1
  # PATCH/PUT /works/1.json
  def update
    respond_to do |format|
      if @work.update(work_params)
        format.html { redirect_to @work.profile, notice: 'Work was successfully updated.' }
        format.json { render :show, status: :ok, location: @work }
      else
        format.html { render :edit }
        format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /works/1
  # DELETE /works/1.json
  def destroy
    @work.destroy
    respond_to do |format|
      format.html { redirect_to works_url, notice: 'Work was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_profile
      @profile = Profile.find(params[:profile_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_work
      @work = Work.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_params
      params.require(:work).permit(:company, :roles, :start_date, :end_date, :tasks, :profile_id)
    end
end
