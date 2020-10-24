class CategoryAllocationsController < ApplicationController
  before_action :set_category_allocation, only: [:show, :edit, :update, :destroy]

  # GET /category_allocations
  # GET /category_allocations.json
  def index
    @category_allocations = CategoryAllocation.all
  end

  # GET /category_allocations/1
  # GET /category_allocations/1.json
  def show
  end

  # GET /category_allocations/new
  def new
    @category_allocation = CategoryAllocation.new
  end

  # GET /category_allocations/1/edit
  def edit
  end

  # POST /category_allocations
  # POST /category_allocations.json
  def create
    @category_allocation = CategoryAllocation.new(category_allocation_params)

    respond_to do |format|
      if @category_allocation.save
        format.html { redirect_to @category_allocation, notice: 'Category allocation was successfully created.' }
        format.json { render :show, status: :created, location: @category_allocation }
      else
        format.html { render :new }
        format.json { render json: @category_allocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /category_allocations/1
  # PATCH/PUT /category_allocations/1.json
  def update
    respond_to do |format|
      if @category_allocation.update(category_allocation_params)
        format.html { redirect_to @category_allocation, notice: 'Category allocation was successfully updated.' }
        format.json { render :show, status: :ok, location: @category_allocation }
      else
        format.html { render :edit }
        format.json { render json: @category_allocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_allocations/1
  # DELETE /category_allocations/1.json
  def destroy
    @category_allocation.destroy
    respond_to do |format|
      format.html { redirect_to category_allocations_url, notice: 'Category allocation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_allocation
      @category_allocation = CategoryAllocation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def category_allocation_params
      params.require(:category_allocation).permit(:category_id, :product_id)
    end
end
