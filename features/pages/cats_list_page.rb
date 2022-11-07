class CatsListPage < SitePrism::Page
    element :paw_logo, '.MsQkWd'
    element :wiki_link, '.ruhjFe.NJLBac.fl'

    # def paw_click
    #     paw_logo.click
    # end

    def wiki_click
        wiki_link.click
    end
end