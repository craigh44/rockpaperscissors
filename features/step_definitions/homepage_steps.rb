Given(/^I want to play Rock Paper Scissors$/) do
end

When(/^I'm on the homepage$/) do
 visit '/'
end

Then(/^I should see Welcome to Rock Paper Scissors$/) do
  expect(page).to have_content "Welcome to Rock Paper Scissors"

end