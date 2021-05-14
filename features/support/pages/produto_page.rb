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
                page.find('[value="az"]').click()
            
            when "Name (Z to A)"
                page.find('[value="za"]').click()

            when "Price (low to high)"
                page.find('[value="lohi"]').click()

            when "Price (high to low)"
                page.find('[value="hilo"]').click()
            
            else 
                #select 'Brasil', from: 'Países'
                puts "Nenhuma opção encontrada"
        end
    end

    def go
        visit '/inventory.html'
    end
  
end






