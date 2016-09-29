
#You can implement step definitions for undefined steps with these snippets:

Given(/^I am on the puppy adoption site$/) do
  @browser.goto "http://puppies.herokuapp.com" # Write code here that turns the phrase above into concrete actions
end

When(/^I click the first View Details button$/) do
  @browser.button(:value => 'View Details').click # Write code here that turns the phrase above into concrete actions
end

When(/^I click the Adopt Me button$/) do
  @browser.button(:value => 'Adopt Me!').click # Write code here that turns the phrase above into concrete actions
end

When(/^I click the Complete the Adoption button$/) do
  @browser.button(:value => "Complete the Adoption").click # Write code here that turns the phrase above into concrete actions
end

When(/^I enter "([^"]*)" in the name field$/) do |name|
  @browser.text_field(:id => "order_name").set(name)# Write code here that turns the phrase above into concrete actions
end

When(/^I enter "([^"]*)" in the address field$/) do |address|
  @browser.text_field(:id => "order_address").set(address) # Write code here that turns the phrase above into concrete actions
end

When(/^I enter "([^"]*)" in the email field$/) do |email|
  @browser.text_field(:id => "order_email").set(email) # Write code here that turns the phrase above into concrete actions
end

When(/^I select "([^"]*)" from the pay with dropdown$/) do |pay_type|
  @browser.select_list(:id => "order_pay_type").select(pay_type) # Write code here that turns the phrase above into concrete actions
end

When(/^I click the Place Order button$/) do
  @browser.button(:value => "Place Order").click # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see "([^"]*)" as the name for line item (\d+)$/) do |name, line_item|
  row = (line_item.to_i - 1) * 6
  @browser.table(:index => 0)[row][3].text.should.include name# Write code here that turns the phrase above into concrete actions
end

Then(/^I should see "([^"]*)" as the subtotal for line item (\d+)$/) do |subtotal, line_item|
  row = (line_item.to_i - 1) * 6
  @browser.table(:index => 0)[row][3].text.should == subtotal # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see "([^"]*)" as the cart total$/) do |total|
  @browser.td(:class => 'total_cell').text.should ==total # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see "([^"]*)"$/) do |expected|
  @browser.text.should include expected # Write code here that turns the phrase above into concrete actions
end
