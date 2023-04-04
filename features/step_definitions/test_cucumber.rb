require 'rubyXL'
require 'rubyXL/convenience_methods'

home_page = HomePage.new
cats_list_page = CatsListPage.new
cats_wiki_page = CatsWikiPage.new

workbook = RubyXL::Parser.parse(File.join("./test.xlsx"))

worksheet = workbook.worksheets[0]

Given(/^Go to the Google homepage$/) do
    home_page.load
    home_page.displayed?
end

And(/Search "([^"]*)" and click wiki link$/) do |query|
    home_page.search_for(query)

    worksheet.insert_row(1)
    worksheet.insert_cell(1, 0, query)
    worksheet.insert_cell(1, 1, Time.new.strftime("%Y-%m-%d %H:%M:%S"))

    worksheet.insert_cell(1, 3, BROWSER)

    worksheet.insert_cell(1, 2, 'Fail')
    workbook.write("./test.xlsx")
    
    worksheet.insert_cell(1, 2, 'Pass')
    cats_list_page.wiki_click
end

Then(/Wiki page is opened$/) do
    expect(cats_wiki_page.title.text).to eq('Кіт свійський')
    workbook.write("./test.xlsx")
end