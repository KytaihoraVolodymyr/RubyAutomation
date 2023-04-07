require 'rubyXL'
require 'rubyXL/convenience_methods'

home_page = HomePage.new
autoria_list_page = AutoriaListPage.new
autoria_wiki_page = AutoriaWikiPage.new
autoria_page = AutoriaPage.new

Given(/^I navigate to the Google homepage$/) do
    home_page.load
    home_page.displayed?
    home_page.has_google_logo?
end

And(/^I search "([^"]*)"$/) do |query|
    home_page.search_for(query)
    autoria_list_page.title.text eq('AUTO.RIA')
end

And(/^Click the wiki link$/) do
    autoria_list_page.wiki_click
    autoria_wiki_page.has_logo?
    
end

When(/^I go back and forward$/) do
    page.go_back
    page.go_forward

    autoria_wiki_page.has_title?
    autoria_wiki_page.has_logo?
    page.go_back
end

And(/^Open a new tab$/) do
    first('div.g a').send_keys([:command, :return])
    driver = page.driver.browser
    driver.switch_to.window(driver.window_handles.last)
    sleep(5)

    driver.switch_to.window(driver.window_handles.first)
    sleep(5)
    driver.switch_to.window(driver.window_handles.last)
    sleep(5)
end

Then(/^New tab is opened, button is displayed$/) do 
    autoria_page.has_add_new_ad?
end