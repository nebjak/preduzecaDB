class PreduzeceTelefonController < ApplicationController
  before_action :set_preduzece_telefon, only: [:show, :edit, :update, :destroy]

  # GET /preduzece_telefon
  # GET /preduzece_telefon.json
  def index
    @preduzece_telefon = PreduzeceTelefon.all
  end

  # GET /preduzece_telefon/1
  # GET /preduzece_telefon/1.json
  def show
  end

  # GET /preduzece_telefon/new
  def new
    @preduzece_telefon = PreduzeceTelefon.new
  end

  # GET /preduzece_telefon/1/edit
  def edit
  end

  # POST /preduzece_telefon
  # POST /preduzece_telefon.json
  def create
    @preduzece_telefon = PreduzeceTelefon.new(preduzece_telefon_params)

    respond_to do |format|
      if @preduzece_telefon.save
        format.html { redirect_to @preduzece_telefon, notice: 'Preduzece telefon was successfully created.' }
        format.json { render action: 'show', status: :created, location: @preduzece_telefon }
      else
        format.html { render action: 'new' }
        format.json { render json: @preduzece_telefon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /preduzece_telefon/1
  # PATCH/PUT /preduzece_telefon/1.json
  def update
    respond_to do |format|
      if @preduzece_telefon.update(preduzece_telefon_params)
        format.html { redirect_to @preduzece_telefon, notice: 'Preduzece telefon was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @preduzece_telefon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /preduzece_telefon/1
  # DELETE /preduzece_telefon/1.json
  def destroy
    @preduzece_telefon.destroy
    respond_to do |format|
      format.html { redirect_to preduzece_telefon_index_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_preduzece_telefon
      @preduzece_telefon = PreduzeceTelefon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def preduzece_telefon_params
      params.require(:preduzece_telefon).permit(:_id, :preduzece_id, :tip_telefona_id, :telefon)
    end
end
