When("I visit landing page") do
  visit root_path
end

Then("I should see {string}") do |text|
  expect(page).to have_content text
end

When("I fill in {string} with {string}")  do |search_field, content|
  fill_in search_field, with: content
end

When("I click on {string} button") do |button|
  click_link_or_button button
end

Then("I should see a list of {string}") do |element|
  expect(page).to have_element element
end
