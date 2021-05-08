require_relative "./base_page.rb"

class ProdutoPage < BasePage

    element :box_filter, '.product_sort_container'
    element :link_firstItem, 'div.inventory_list > div.inventory_item:nth-child(1) .inventory_item_name'

    def cardItemAndOption(itemName, option)
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
    
    def filterSelect(filterName)
        box_filter.click

        case filterName
            when "Name (A to Z)"
                click_on("Name (A to Z)")
                Select "Name (A to Z)", from "Name (A to Z)"
            
            when "Name (Z to A)"
                click_on("Name (Z to A)")

            when "Price (low to high)"
                click_on("Price (low to high)")

            when "Price (high to low)"
                click_on("Price (high to low)")
            
            else 
                #select 'Brasil', from: 'Países'
                puts "Nenhuma opção encontrada"
        end
    end

    def go
        visit '/inventory.html'
    end
  
end


