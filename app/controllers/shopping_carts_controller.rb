class ShoppingCartsController < ApplicationController
  def create
    product = Product.find(params[:product_id])
    cart = Cart.create
    cart.add(product, product.price)

    redirect_to webshop_show_path, notice: "#{product.title} has been added to cart "
  end
end
