class ShoppingCartsController < ApplicationController
  def create
    product = Product.find(params[:product_id])
    cart = Cart.create
    # binding.pry
    cart.add(product, product.price)
  end
end
