class HierarchiesController < ApplicationController
  before_action :set_hierarchy, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  # GET /hierarchies
  # GET /hierarchies.json
  def index
    @hierarchies = Hierarchy.all
  end

  # GET /hierarchies/1
  # GET /hierarchies/1.json
  def show
  end

  # GET /hierarchies/new
  def new
    @hierarchy = Hierarchy.new
  end

  # # GET /hierarchies/1/edit
  # def edit
  # end

  # # POST /hierarchies
  # # POST /hierarchies.json
  # def create
  #   @hierarchy = Hierarchy.new(hierarchy_params)

  #   respond_to do |format|
  #     if @hierarchy.save
  #       format.html { redirect_to @hierarchy, notice: 'グループが作成されました。' }
  #       format.json { render action: 'show', status: :created, location: @hierarchy }
  #     else
  #       format.html { render action: 'new' }
  #       format.json { render json: @hierarchy.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /hierarchies/1
  # # PATCH/PUT /hierarchies/1.json
  # def update
  #   respond_to do |format|
  #     if @hierarchy.update(hierarchy_params)
  #       format.html { redirect_to @hierarchy, notice: 'グループが更新されました。' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: 'edit' }
  #       format.json { render json: @hierarchy.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /hierarchies/1
  # # DELETE /hierarchies/1.json
  # def destroy
  #   @hierarchy.destroy
  #   respond_to do |format|
  #     format.html { redirect_to hierarchies_url }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hierarchy
      @hierarchy = Hierarchy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hierarchy_params
      params.require(:hierarchy).permit(:p_id, :gname)
    end
end
