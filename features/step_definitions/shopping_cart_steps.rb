When("I click on {string} on {string}") do |link, title|
  @product = Product.find_by(title: title)
    within("#product-#{@product.id}") do
      click_link_or_button link
    end
end

# Then("show me the page") do
#   save_and_open_page
# end
