class DelatnostController < ApplicationController
  before_action :set_delatnost, only: [:show, :edit, :update, :destroy]

  # GET /delatnost
  # GET /delatnost.json
  def index
    @delatnost = Delatnost.all
  end

  # GET /delatnost/1
  # GET /delatnost/1.json
  def show
    @preduzeca = @delatnost.preduzece.all
  end

  # GET /delatnost/new
  def new
    @delatnost = Delatnost.new
  end

  # GET /delatnost/1/edit
  def edit
  end

  # POST /delatnost
  # POST /delatnost.json
  def create
    @delatnost = Delatnost.new(delatnost_params)

    respond_to do |format|
      if @delatnost.save
        format.html { redirect_to @delatnost, notice: 'Delatnost was successfully created.' }
        format.json { render action: 'show', status: :created, location: @delatnost }
      else
        format.html { render action: 'new' }
        format.json { render json: @delatnost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /delatnost/1
  # PATCH/PUT /delatnost/1.json
  def update
    respond_to do |format|
      if @delatnost.update(delatnost_params)
        format.html { redirect_to @delatnost, notice: 'Delatnost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @delatnost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /delatnost/1
  # DELETE /delatnost/1.json
  def destroy
    @delatnost.destroy
    respond_to do |format|
      format.html { redirect_to delatnost_index_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delatnost
      @delatnost = Delatnost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def delatnost_params
      params.require(:delatnost).permit(:delatnost, :izbor)
    end
end
