class StatusController < ApplicationController
  before_action :set_status, only: [:show, :edit, :update, :destroy]

  # GET /status
  # GET /status.json
  def index
    @status = Status.all
  end

  # GET /status/1
  # GET /status/1.json
  def show
  end

  # GET /status/new
  def new
    @status = Status.new
  end

  # GET /status/1/edit
  def edit
  end

  # POST /status
  # POST /status.json
  def create
    @status = Status.new(status_params)

    respond_to do |format|
      if @status.save
        format.html { redirect_to @status, notice: 'Status was successfully created.' }
        format.json { render action: 'show', status: :created, location: @status }
      else
        format.html { render action: 'new' }
        format.json { render json: @status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /status/1
  # PATCH/PUT /status/1.json
  def update
    respond_to do |format|
      if @status.update(status_params)
        format.html { redirect_to @status, notice: 'Status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status/1
  # DELETE /status/1.json
  def destroy
    @status.destroy
    respond_to do |format|
      format.html { redirect_to status_index_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status
      @status = Status.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def status_params
      params.require(:status).permit(:_id, :status)
    end
end
