class MestoController < ApplicationController
  before_action :set_mesto, only: [:show, :edit, :update, :destroy]

  # GET /mesto
  # GET /mesto.json
  def index
    @mesto = Mesto.all
  end

  # GET /mesto/1
  # GET /mesto/1.json
  def show
  end

  # GET /mesto/new
  def new
    @mesto = Mesto.new
  end

  # GET /mesto/1/edit
  def edit
  end

  # POST /mesto
  # POST /mesto.json
  def create
    @mesto = Mesto.new(mesto_params)

    respond_to do |format|
      if @mesto.save
        format.html { redirect_to @mesto, notice: 'Mesto was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mesto }
      else
        format.html { render action: 'new' }
        format.json { render json: @mesto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mesto/1
  # PATCH/PUT /mesto/1.json
  def update
    respond_to do |format|
      if @mesto.update(mesto_params)
        format.html { redirect_to @mesto, notice: 'Mesto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mesto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mesto/1
  # DELETE /mesto/1.json
  def destroy
    @mesto.destroy
    respond_to do |format|
      format.html { redirect_to mesto_index_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mesto
      @mesto = Mesto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mesto_params
      params.require(:mesto).permit(:_id, :mesto, :izbor)
    end
end
