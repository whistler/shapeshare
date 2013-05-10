class DesignsController < ApplicationController
  before_action :set_design, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, only: [:edit, :update, :destroy]

  # GET /designs
  def index
    @designs = Design.all
  end

  # GET /designs/1
  def show
  end

  # GET /designs/new
  def new
    @design = Design.new
  end

  # GET /designs/1/edit
  def edit
  end

  # POST /designs
  def create
    @design = Design.new(design_params)
    @design.user_id = current_user
    if @design.save
      redirect_to @design, notice: 'Design was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /designs/1
  def update
    if @design.update(design_params)
      redirect_to @design, notice: 'Design was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /designs/1
  def destroy
    @design.destroy
    redirect_to designs_url, notice: 'Design was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_design
      @design = Design.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def design_params
      params.require(:design).permit(:title, :description, :file)
    end
end
