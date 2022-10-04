Given(/^I visit google$/) do
    visit 'https://www.google.com'
end

And(/^I search "([^"]*)"$/) do |query|

    search_box = find('.gLFyf.gsfi')
    search_btn = find('.gNO89b')
    search_box.set(query)
    search_btn.click

    paw = find('img.MsQkWd')
    paw.click
end

Then(/^I wait$/) do
    sleep 5
end