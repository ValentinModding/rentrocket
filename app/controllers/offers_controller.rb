class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update, :destroy]

  def index
    @offers = policy_scope(Offer).order(created_at: :desc)
  end

  def show
    @order = Order.new
    authorize @order
    authorize @offer
  end

  def new
    @offer = Offer.new
    authorize @offer
  end

  def create
    @offer = Offer.new(offer_params)
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :new
      authorize @offer
    end
  end

  def edit
    authorize @offer
  end

  def update
    @offer.update(offer_params)
    redirect_to offer_path(@offer)
    authorize @offer
  end

  def destroy
    @offer.destroy
    redirect_to offers_path
    authorize @offer
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:title, :price, :brand, :model, :year, :horsepower, :km_age, :body_type, :user_id, :image)
  end
end
