When("I am on the {string} page") do |string|
  visit webshop_show_path
end

Then("I should see {string} of {string}") do |title, name|
  expect(page).to have_content title, name
end
