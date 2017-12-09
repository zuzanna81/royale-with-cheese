class OrderController < ApplicationController
  def create
    @order = Order.create
  # post '/order_create' do
  #   product = Product.find(params['product_id'])
  #   if session[:order_id]
  #     order = Order.find(session[:cart_id])
  #   else
  #     order = Order.create
  #     session[:order_id] = order.id
  #   end
  #     order_item = OrderItem.create(product: product, order: order)
  #     flash[:notice] = "#{order_item.product.title} was added to your cart"
  #     redirect webshop_show_path
  # end
end
