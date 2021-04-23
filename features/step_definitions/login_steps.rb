    Quando('acessar a página SauceDemo') do
        @login.go
    end
  
    Então('faremos a validação da página de login') do
        expect(page).to have_button('Login')
        expect(page).to have_content('standard_user')
        expect(page).to have_content('secret_sauce')
    end
    
    Quando('efetuar o login com o usuário {string}') do |nomeUsuario|
        # input_login.set 'standard_user'
        # input_senha.set 'secret_sauce'
        # btn_logar.click
        @login.doLogin(nomeUsuario, "secret_sauce")
    end
    
    Então('o seguinte texto estará na página {string}') do |textoElemento|
        expect(page).to have_content(textoElemento)
    end
    
    Quando('efetuar o login com a senha errada {string}') do |abc|
        @login.doLogin("standard_user", abc)
    end

    Então('o seguinte texto estará na página {string}') do |string|
        expect(page).to have_content('Epic sadface: Username and password do not match any user in this service')
    end
