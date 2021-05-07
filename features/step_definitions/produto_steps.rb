Então('faremos a validação da página de produtos') do
    expect(page).to have_content('Products')
    binding.pry
end

Então('os seguintes {string} serão validados') do |string|
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('o precos {string} de cada um são') do |string|
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('clico no botão de filtros') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('opto pelo filtro {string}') do |string|
    pending # Write code here that turns the phrase above into concrete actions
end
  
Entao('o primeiro produto será {string}') do |string|
    pending # Write code here that turns the phrase above into concrete actions
end