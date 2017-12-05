Given("I visit the landing page") do
  visit 'landing/index'
end

Then("I should see {string}") do |text|
  expect(page).to have_content text
end
