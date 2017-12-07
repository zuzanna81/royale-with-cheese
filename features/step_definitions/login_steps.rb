Given("I visit the {string} page") do |page_name|
  visit page_path_from(page_name)
end

When("I click {string}") do |element|
  click_link_or_button element
end

Then("I should be redirected to the {string} page") do |page_name|
  expect(page.current_path).to eq page_path_from(page_name)
end
