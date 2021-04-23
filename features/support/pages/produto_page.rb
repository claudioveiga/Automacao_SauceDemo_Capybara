require_relative "./base_page.rb"

class ProdutoPage < BasePage

    element :ABC1, '#aaa'
    element :ABC1, '#aaa'

    def go
        visit '/inventory.html'
    end
  
end