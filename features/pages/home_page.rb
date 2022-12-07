class HomePage < SitePrism::Page
    set_url 'https://www.google.com'

    element :search_field, '.gLFyf'
    element :search_button, '.gNO89b'
    element :google_logo, '.lnXdpd'

    def search_for(query)
        search_field.set(query)
        search_button.click
    end
end