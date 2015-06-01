class StatusesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_status, only: [:edit, :update, :destroy]

  def index
    @statuses = Status.all
    @status = Status.new
  end

  def show
  end

  # GET /statuses/1/edit
  def edit
  end

  def create
    @status = Status.new(status_params)
    @status.save
    redirect_to statuses_path, notice: 'Status was successfully created'
  end

  # PATCH/PUT /statuses/1
  # PATCH/PUT /statuses/1.json
  def update
    respond_to do |format|
      if @status.update(status_params)
        format.html { redirect_to @status, notice: 'Status was successfully updated.' }
        format.json { render :show, status: :ok, location: @status }
      else
        format.html { render :edit }
        format.json { render json: @status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /statuses/1
  # DELETE /statuses/1.json
  def destroy
    @status.destroy
    respond_to do |format|
      format.html { redirect_to statuses_url, notice: 'Status was successfully destroyed.' }
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
      params[:status].permit(:name)
    end

end
