    Quando('acessar a página SauceDemo') do
        @login.go
    end

    Quando('efetuar o login com o usuário {string}') do |nomeUsuario|
        # input_login.set 'standard_user'
        # input_senha.set 'secret_sauce'
        # btn_logar.click
        @login.doLogin(nomeUsuario, "secret_sauce")
    end
    
    Quando('efetuar o login com a senha errada') do
        @login.doLogin("standard_user", "senhaerrada")
    end

    Então('faremos a validação da página de login') do
        expect(page).to have_button('Login')
        expect(page).to have_content('standard_user')
        expect(page).to have_content('secret_sauce')
    end
    
    Então('a mensagem de erro de usuário ou senha irá aparecer') do
        expect(page).to have_content('Epic sadface: Username and password do not match any user in this service')
    end

    
