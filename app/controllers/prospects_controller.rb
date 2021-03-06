class ProspectsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_prospect, only: [:show, :edit, :update, :destroy]

  # GET /prospects
  # GET /prospects.json
  def index
    @prospects = Prospect.active
  end

  # GET /prospects/1
  # GET /prospects/1.json
  def show
  end

  # GET /prospects/1/edit
  def edit
  end

  def archive
    @prospects = Prospect.archive
  end

  # PATCH/PUT /prospects/1
  # PATCH/PUT /prospects/1.json
  def update
    respond_to do |format|
      if @prospect.update(prospect_params)
        format.html { redirect_to @prospect, notice: 'Prospect was successfully updated.' }
        format.json { render :show, status: :ok, location: @prospect }
      else
        format.html { render :edit }
        format.json { render json: @prospect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prospects/1
  # DELETE /prospects/1.json
  def destroy
    @prospect.destroy
    respond_to do |format|
      format.html { redirect_to prospects_url, notice: 'Prospect was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prospect
      @prospect = Prospect.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prospect_params
      params[:prospect].permit(:department_id, :status_id, :notes)
    end
end
