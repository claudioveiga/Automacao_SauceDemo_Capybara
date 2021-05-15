Quando('acesso o link <link> do Item') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('valido o nome {string} do Item') do |string|
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('os valores do link: <link>, descrição: <descricao>, preço: <preco> e botão: <botao> serão validados') do |link, descricao, preco, botao|
    steps %{
        Então o valor do card daquele link "#{link}" será validado
        E o valor da descrição do card daquele link "#{descricao}" será validado
        E o valor do preço do card daquele link "#{preco}" será validado
        E o valor do botão do card daquele link "#{botao}" será validado
    }
end