Given(/^I visit google$/) do 
    visit 'http://www.google.com'
end

And(/^I search "([^"]*)"$/) do |query|
    search_box = '#lst-ib'
    search_btn = '.lsb'

    find(search_box).set query
    find(search_btn).click
end

Then(/^I wait$/) do
    require pry
    binding.pry
end