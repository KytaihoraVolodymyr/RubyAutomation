class AutoriaListPage < SitePrism::Page
    element :title, '.SPZz6b'
    element :wiki_link, '.ruhjFe.NJLBac.fl'
    element :first_link, 'a[href="https://auto.ria.com/uk/"]'

    def wiki_click
        wiki_link.click
    end

    def first_link_click
        print first_link.click
    end

end