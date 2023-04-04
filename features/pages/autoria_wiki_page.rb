class AutoriaWikiPage < SitePrism::Page
    set_url 'https://uk.wikipedia.org/wiki/AUTO.RIA'
   
    element :title, '.mw-page-title-main'
    element :logo, '.floatnone'
end