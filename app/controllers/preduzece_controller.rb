class PreduzeceController < ApplicationController
  before_action :set_preduzece, only: [:show, :edit, :update, :destroy]

  # GET /preduzece
  # GET /preduzece.json
  def index
    @preduzece = Preduzece.all
  end

  # GET /preduzece/1
  # GET /preduzece/1.json
  def show
  end

  # GET /preduzece/new
  def new
    @preduzece = Preduzece.new
  end

  # GET /preduzece/1/edit
  def edit
  end

  # POST /preduzece
  # POST /preduzece.json
  def create
    @preduzece = Preduzece.new(preduzece_params)

    respond_to do |format|
      if @preduzece.save
        format.html { redirect_to @preduzece, notice: 'Preduzece was successfully created.' }
        format.json { render action: 'show', status: :created, location: @preduzece }
      else
        format.html { render action: 'new' }
        format.json { render json: @preduzece.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /preduzece/1
  # PATCH/PUT /preduzece/1.json
  def update
    respond_to do |format|
      if @preduzece.update(preduzece_params)
        format.html { redirect_to @preduzece, notice: 'Preduzece was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @preduzece.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /preduzece/1
  # DELETE /preduzece/1.json
  def destroy
    @preduzece.destroy
    respond_to do |format|
      format.html { redirect_to preduzece_index_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_preduzece
      @preduzece = Preduzece.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def preduzece_params
      params.require(:preduzece).permit(:_id, :delatnost_id, :mesto_id, :status_id, :id, :naziv, :post_broj, :adresa, :sajt, :napomena)
    end
end
