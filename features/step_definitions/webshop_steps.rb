Given("the following product exist") do |table|
  table.hashes.each do |product|
  create(:product, product)
  end
end

When("I am on the {string} page") do |string|
  visit webshop_show_path
end

When("I click on {string} button") do |element|
  click_link_or_button element
end

Then("I would like to see {string} with a description of {string} and a price of {string} kr") do |title, description, price|
  expected_output = "#{title} - #{description} - #{price}"
  expect(page).to have_content expected_output
end
