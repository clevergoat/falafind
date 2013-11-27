class ShopsController < ApplicationController
  
	# index to 'talk' to the model
  def index

    # if there's a search parameter q, then use geocoder
    # if not, find all the shops like usual

    if params[:q].present?
      # then use geocoder
      @shops = Shop.near(params[:q])
    else
      # find all the shops
      @shops = Shop.all
    end
  end

  # new form for a shop
  def new
  	@shop = Shop.new
  end

  # create the shop using the data the form has in it
  def create
  	@shop = Shop.new(shop_params)

  	if @shop.save
  	 redirect_to root_path
    else
      render :new
    end

  end

  # stop dem hackers
  def shop_params
  	params.require(:shop).permit(:name, :address, :longitude, :latitude, :colour)
  end

end
