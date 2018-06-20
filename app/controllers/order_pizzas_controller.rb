class OrderPizzasController < ApplicationController
  before_action :set_order_pizza, only: [:show, :edit, :update, :destroy]

  # GET /order_pizzas
  # GET /order_pizzas.json
  def index
    @order_pizzas = OrderPizza.all
  end

  # GET /order_pizzas/1
  # GET /order_pizzas/1.json
  def show
  end

  # GET /order_pizzas/new
  def new
    @order_pizza = OrderPizza.new
  end

  # GET /order_pizzas/1/edit
  def edit
  end

  # POST /order_pizzas
  # POST /order_pizzas.json
  def create
    @order_pizza = OrderPizza.new(order_pizza_params)

    respond_to do |format|
      if @order_pizza.save
        format.html { redirect_to @order_pizza, notice: 'OrderPizza was successfully created.' }
        format.json { render :show, status: :created, location: @order_pizza }
      else
        format.html { render :new }
        format.json { render json: @order_pizza.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_pizzas/1
  # PATCH/PUT /order_pizzas/1.json
  def update
    respond_to do |format|
      if @order_pizza.update(order_pizza_params)
        format.html { redirect_to @order_pizza, notice: 'OrderPizza was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_pizza }
      else
        format.html { render :edit }
        format.json { render json: @order_pizza.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_pizzas/1
  # DELETE /order_pizzas/1.json
  def destroy
    @pizzas = OrderPizza.where(order_id = params[:order_id])
    @order_pizza = @pizzas.where(pizza_id = params[:pizza_id])
    @order_pizza.destroy
    respond_to do |format|
      format.html { redirect_to order_pizzas_url, notice: 'OrderPizza was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_pizza
      @order_pizza = OrderPizza.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_pizza_params
      params.require(:order_pizza).permit(:order_id, :pizza_id)
    end
end
