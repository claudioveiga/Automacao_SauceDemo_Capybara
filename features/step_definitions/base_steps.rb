Então('o seguinte texto estará na página {string}') do |textoElemento|
    expect(page).to have_content(textoElemento)
end