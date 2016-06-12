class LanguagesController < ApplicationController
  before_action :set_language, only: [:show, :edit, :update, :destroy]
  before_action :set_profile

  # GET /languages/1
  # GET /languages/1.json
  def show
  end

  # POST /languages
  # POST /languages.json
  def create
    @language = Language.new(language_params)
    @language.profile = @profile
    respond_to do |format|
      if @language.save
        format.html { redirect_to @language.profile, notice: 'Language was successfully created.' }
        format.json { render :show, status: :created, location: @language.profile }
      else
        format.html { render :new }
        format.json { render json: @language.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /languages/1
  # PATCH/PUT /languages/1.json
  def update
    respond_to do |format|
      if @language.update(language_params)
        format.html { redirect_to @language.profile, notice: 'Language was successfully updated.' }
        format.json { render :show, status: :ok, location: @language.profile }
      else
        format.html { render :edit }
        format.json { render json: @language.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /languages/1
  # DELETE /languages/1.json
  def destroy
    @language.destroy
    respond_to do |format|
      format.html { redirect_to languages_url, notice: 'Language was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  
    def set_profile
      @profile = Profile.find(params[:profile_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_language
      @language = Language.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def language_params
      params.require(:language).permit(:name, :porcent)
    end
end
