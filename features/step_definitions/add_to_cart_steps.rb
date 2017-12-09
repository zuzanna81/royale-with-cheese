When("I click {string} on {string}") do |element, product_name|
  @product = Product.find_by(title: product_name)
  within("#product-#{@product.id}") do
    click_link_or_button element
  end
end

# Then("there should be a cart created for me") do
#   @cart = Cart.last
#   expect(@cart).to_not be nil
# end
#
# Then("the cart should contain {string}") do |product_name|
#   product = @product || Product.find_by(title: product_name)
#   item = @cart.cart_items.first
#   expect(item.product).to eq product
# end

Then(/^there should be an order created for me$/) do
  @order = Order.last
  expect(@order).to_not be nil
end

Then(/^the order should contain "([^"]*)"$/) do |product_name|
  product = @product || Product.find_by(name: product_name)
  item = @order.order_items.detect {|item| item.product == product}
  expect(item.product).to eq product
end
