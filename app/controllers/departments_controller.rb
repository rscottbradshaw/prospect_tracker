class DepartmentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_department, only: [:edit, :update, :destroy, :show]

  def index
    @departments = Department.all
    @department = Department.new
  end

  def show
    # @department = Department.find(params[:id])
    @prospects = @department.prospects
  end

  def edit
  end

  def create
    @department = Department.new(department_params)
    @department.save
    redirect_to departments_path, notice: 'Department was successfully created'
  end

  def destroy
    @department.destroy
    respond_to do |format|
      format.html { redirect_to departments_url, notice: 'Department was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_department
      @department = Department.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def department_params
      params[:department].permit(:name, :manager)
    end

end
