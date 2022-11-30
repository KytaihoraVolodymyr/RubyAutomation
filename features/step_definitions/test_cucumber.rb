require 'test.xlsx'
require 'rubyXL'
require 'rubyXL/convenience_methods'

home_page = HomePage.new
cats_list_page = CatsListPage.new
cats_wiki_page = CatsWikiPage.new

workbook = RubyXL::Parser.parse("/Users/vkytaiho/Desktop/RubyAutomation/test.xlsx")
#workbook = RubyXL::Parser.parse("/test.xlsx")
worksheet = workbook.worksheets[0]

Given(/^I navigate to the Google homepage$/) do
    home_page.load
    home_page.displayed?
end

And(/^I search "([^"]*)" and click wiki link$/) do |query|
    worksheet[3][1].change_contents(query)
    workbook.write('./test.xlsx')

    home_page.search_for(query)
    cats_list_page.wiki_click
end

Then(/Wiki page is opened$/) do
    expect(cats_wiki_page.title.text).to eq('Кіт свійський')
end