Given("I visit the {string} page") do |page_name|
  visit root_path
end

When("I click on the {string} button or link") do |element|
  click_link_or_button element
end

Then("I should be redirected to the {string} page") do |page_name|
  expect(page.current_path).to eq page_path_from(page_name)
end

When("I fill in {string} with {string}") do |field, value|
  fill_in field, with: value
end

Then("I should see {string}") do |text|
  expect(page).to have_content text
end

def page_path_from(page_name)
  case page_name.downcase
    when 'landing' then root_path
    when 'sign up' then
  end
end
