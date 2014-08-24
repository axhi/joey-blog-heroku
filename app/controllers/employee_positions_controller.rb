class EmployeePositionsController < ApplicationController
  before_action :set_employee_position, only: [:show, :edit, :update, :destroy]

  # GET /employee_positions
  # GET /employee_positions.json
  def index
    @employee_positions = EmployeePosition.all
  end

  # GET /employee_positions/1
  # GET /employee_positions/1.json
  def show
  end

  # GET /employee_positions/new
  def new
    @employee_position = EmployeePosition.new
  end

  # GET /employee_positions/1/edit
  def edit
  end

  # POST /employee_positions
  # POST /employee_positions.json
  def create
    @employee_position = EmployeePosition.new(employee_position_params)

    respond_to do |format|
      if @employee_position.save
        format.html { redirect_to @employee_position, notice: 'Employee position was successfully created.' }
        format.json { render action: 'show', status: :created, location: @employee_position }
      else
        format.html { render action: 'new' }
        format.json { render json: @employee_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_positions/1
  # PATCH/PUT /employee_positions/1.json
  def update
    respond_to do |format|
      if @employee_position.update(employee_position_params)
        format.html { redirect_to @employee_position, notice: 'Employee position was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @employee_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_positions/1
  # DELETE /employee_positions/1.json
  def destroy
    @employee_position.destroy
    respond_to do |format|
      format.html { redirect_to employee_positions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_position
      @employee_position = EmployeePosition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_position_params
      params.require(:employee_position).permit(:employee_id, :position_id, :organization_id)
    end
end
