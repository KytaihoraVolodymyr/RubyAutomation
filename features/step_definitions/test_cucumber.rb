home_page = HomePage.new
cats_list_page = CatsListPage.new
cats_wiki_page = CatsWikiPage.new

Given(/^I navigate to the Google homepage$/) do
    home_page.load
    home_page.displayed?
end

And(/^I search "([^"]*)" and click wiki link$/) do |query|
    home_page.search_for(query)
    cats_list_page.wiki_click
end

Then(/Wiki page is opened$/) do
    expect(cats_wiki_page.title.text).to eq('Кіт свійський')
end