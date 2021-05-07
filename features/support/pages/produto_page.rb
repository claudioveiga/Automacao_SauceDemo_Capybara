require_relative "./base_page.rb"

class ProdutoPage < BasePage

    element :box_filter, '.product_sort_container'

    def card_produto(itemName, option)
        nodeScope = page.find_link(itemName)
        nodeScope = nodeScope.ancestor(".inventory_list > .inventory_item")

        case option
            when "link"
                nodeScope.click_link_or_button(itemName)

            when "descricao"
                return nodeScope.find(".inventory_item_desc").text

            when "preco"
                return nodeScope.find(".inventory_item_price").text

            when "botao"
                nodeScope.click_link_or_button("ADD TO CART")

            else
                puts "Nenhuma opção encontrada"
        end
    end
    
    def selecionarFiltro(filtroNome)
        box_filter.click

        case filtroNome
            when "A a Z"
                click_on("Name (A to Z)")
            
            when "Z a A"
                click_on("Name (Z to A)")

            when "lowHigh"
                click_on("Price (low to high)")

            when "highLow"
                click_on("Price (high to low)")
            
            else 
                select 'Brasil', from: 'Países'
                puts "Nenhuma opção encontrada"
        end
    end

    def go
        visit '/inventory.html'
    end
  
end


