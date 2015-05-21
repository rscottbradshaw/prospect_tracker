class DepartmentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @prospects = current_user.department.prospects
  end
end
