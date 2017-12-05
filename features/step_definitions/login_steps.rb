Given("I visit the {string} page") do |page_name|
  visit page_path_from(page_name)
end

When("I click {string}") do |element|
  click_link_or_button element
end

Then("I should be redirected to the {string} page") do |page_name|
  expect(page.current_path).to eq page_path_from(page_name)
end

Given("the following user exists") do |table|
  table.hashes.each do |user|
    User.create(user)
  end
end

When("I fill in {string} with {string}") do |field, value|
  fill_in field, with: value
end

Then("I should be logged in as {string}") do |email|
  user = User.find_by(email: email)
  login_as(user, scope: :user)
end

Then("I should see {string}") do |text|
  expect(page).to have_content text
end
