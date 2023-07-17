class GroceriesItemsController < ApplicationController
  before_action :set_groceries_item, only: %i[ show edit update destroy ]

  # GET /groceries_items or /groceries_items.json
  def index
    @groceries_items = GroceriesItem.all
  end

  # GET /groceries_items/1 or /groceries_items/1.json
  def show
  end

  # GET /groceries_items/new
  def new
    @groceries_item = GroceriesItem.new
  end

  # GET /groceries_items/1/edit
  def edit
  end

  # POST /groceries_items or /groceries_items.json
  def create
    @groceries_item = GroceriesItem.new(groceries_item_params)

    respond_to do |format|
      if @groceries_item.save
        format.html { redirect_to groceries_item_url(@groceries_item), notice: "Groceries item was successfully created." }
        format.json { render :show, status: :created, location: @groceries_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @groceries_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /groceries_items/1 or /groceries_items/1.json
  def update
    respond_to do |format|
      if @groceries_item.update(groceries_item_params)
        format.html { redirect_to groceries_item_url(@groceries_item), notice: "Groceries item was successfully updated." }
        format.json { render :show, status: :ok, location: @groceries_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @groceries_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groceries_items/1 or /groceries_items/1.json
  def destroy
    @groceries_item.destroy

    respond_to do |format|
      format.html { redirect_to groceries_items_url, notice: "Groceries item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_groceries_item
      @groceries_item = GroceriesItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def groceries_item_params
      params.require(:groceries_item).permit(:name, :availability, :price)
    end
end
