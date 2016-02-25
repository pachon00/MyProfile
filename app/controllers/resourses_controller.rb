class ResoursesController < ApplicationController
  before_action :set_resourse, only: [:show, :edit, :update, :destroy]

  # GET /resourses
  # GET /resourses.json
  def index
    @resourses = Resourse.all
  end

  # GET /resourses/1
  # GET /resourses/1.json
  def show
  end

  # GET /resourses/new
  def new
    @resourse = Resourse.new
  end

  # GET /resourses/1/edit
  def edit
  end

  # POST /resourses
  # POST /resourses.json
  def create
    @resourse = Resourse.new(resourse_params)

    respond_to do |format|
      if @resourse.save
        format.html { redirect_to @resourse, notice: 'Resourse was successfully created.' }
        format.json { render :show, status: :created, location: @resourse }
      else
        format.html { render :new }
        format.json { render json: @resourse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resourses/1
  # PATCH/PUT /resourses/1.json
  def update
    respond_to do |format|
      if @resourse.update(resourse_params)
        format.html { redirect_to @resourse, notice: 'Resourse was successfully updated.' }
        format.json { render :show, status: :ok, location: @resourse }
      else
        format.html { render :edit }
        format.json { render json: @resourse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resourses/1
  # DELETE /resourses/1.json
  def destroy
    @resourse.destroy
    respond_to do |format|
      format.html { redirect_to resourses_url, notice: 'Resourse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resourse
      @resourse = Resourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resourse_params
      params.require(:resourse).permit(:type, :name, :email, :website)
    end
end
