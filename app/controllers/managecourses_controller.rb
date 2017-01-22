class ManagecoursesController < ApplicationController
  before_action :set_managecourse, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!
  # GET /managecourses
  # GET /managecourses.json
  def index
    @managecourses = Managecourse.all
  end

  # GET /managecourses/1
  # GET /managecourses/1.json
  def show
  end

  # GET /managecourses/new
  def new
    @managecourse = current_admin.managecourses.build
  end

  # GET /managecourses/1/edit
  def edit
  end

  # POST /managecourses
  # POST /managecourses.json
  def create
    @managecourse = current_admin.managecourses.build(managecourse_params)

    respond_to do |format|
      if @managecourse.save
        format.html { redirect_to @managecourse, notice: 'Managecourse was successfully created.' }
        format.json { render :show, status: :created, location: @managecourse }
      else
        format.html { render :new }
        format.json { render json: @managecourse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /managecourses/1
  # PATCH/PUT /managecourses/1.json
  def update
    respond_to do |format|
      if @managecourse.update(managecourse_params)
        format.html { redirect_to @managecourse, notice: 'Managecourse was successfully updated.' }
        format.json { render :show, status: :ok, location: @managecourse }
      else
        format.html { render :edit }
        format.json { render json: @managecourse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /managecourses/1
  # DELETE /managecourses/1.json
  def destroy
    @managecourse.destroy
    respond_to do |format|
      format.html { redirect_to managecourses_url, notice: 'Managecourse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_managecourse
      @managecourse = Managecourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def managecourse_params
      params.require(:managecourse).permit(:coursename, :responsibleperson, :duration)
    end
end
