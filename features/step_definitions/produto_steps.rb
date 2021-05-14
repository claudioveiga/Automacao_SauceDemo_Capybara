Então('o valor do card daquele link {string} será validado') do |link|
    @produto.cardItemAndOption(link, "link")
end
  
Então('o valor da descrição do card daquele link {string} será validado') do |link|
    @produto.cardItemAndOption(link, "descricao")
end
  
Então('o valor do preço do card daquele link {string} será validado') do |link|
    @produto.cardItemAndOption(link, "preco")
end
  
Então('o valor do botão do card daquele link {string} será validado') do |link|
    @produto.cardItemAndOption(link, "botao")
end
  
Quando('clico e opto pelo filtro {string}') do |filtroEscolhido|
    @produto.filterSelect(filtroEscolhido)
end
  
Entao('o primeiro produto será {string}') do |item|
    expect(@produto.link_firstItem.text).to have_content(item)
end

