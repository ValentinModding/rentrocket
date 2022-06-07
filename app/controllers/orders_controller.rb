class OrdersController < ApplicationController
  before_action :set_offer, only: [:index, :new, :create, :show] #[:show, :update, :destroy]
  before_action :set_order, except: [:index, :new, :create] #only:[:show, :update, :destroy]

  def create
    @offer = Offer.find(params[:offer_id])
    @order = Order.new(order_params)
    @orders.offer = @offer
    @orders.user = current_user
    if @order.save
      redirect_to order_offer_path(@offer, @order)
    else
      render :new
    end
    authorize @order
  end

  def index
    @orders = Order.where(order_id: current_user.id)
  end

  def new
    @order = Order.new
    authorize @order
  end

  def show
    @offer = order.offer
    authorize @order
  end

  def edit
    authorize @order
  end

  def update
    @order.save!
    redirect_to order_path(@order)
    authorize @order
  end

  def destroy
    @order.destroy
    redirect_to offers_path
    authorize @order
  end

  private

  def order_params
    params.require(:order).permit(:offer_id, :user_id, :date_start, :date_end)
  end

  def set_order
    @order = Order.find(params[:id])
  end

  def set_offer
    @offer = Offer.find(params[:id])
  end
end
