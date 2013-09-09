class TipTelefonaController < ApplicationController
  before_action :set_tip_telefona, only: [:show, :edit, :update, :destroy]

  # GET /tip_telefona
  # GET /tip_telefona.json
  def index
    @tip_telefona = TipTelefona.all
  end

  # GET /tip_telefona/1
  # GET /tip_telefona/1.json
  def show
  end

  # GET /tip_telefona/new
  def new
    @tip_telefona = TipTelefona.new
  end

  # GET /tip_telefona/1/edit
  def edit
  end

  # POST /tip_telefona
  # POST /tip_telefona.json
  def create
    @tip_telefona = TipTelefona.new(tip_telefona_params)

    respond_to do |format|
      if @tip_telefona.save
        format.html { redirect_to @tip_telefona, notice: 'Tip telefona was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tip_telefona }
      else
        format.html { render action: 'new' }
        format.json { render json: @tip_telefona.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tip_telefona/1
  # PATCH/PUT /tip_telefona/1.json
  def update
    respond_to do |format|
      if @tip_telefona.update(tip_telefona_params)
        format.html { redirect_to @tip_telefona, notice: 'Tip telefona was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tip_telefona.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tip_telefona/1
  # DELETE /tip_telefona/1.json
  def destroy
    @tip_telefona.destroy
    respond_to do |format|
      format.html { redirect_to tip_telefona_index_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tip_telefona
      @tip_telefona = TipTelefona.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tip_telefona_params
      params.require(:tip_telefona).permit(:_id, :tip_telefona)
    end
end
