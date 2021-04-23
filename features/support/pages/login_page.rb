class LoginPage < BasePage

    element :input_login, '#user-name'
    element :input_senha, '#password'
    element :btn_logar, '#login-button'
    element :text_alerta, 'h3[data-test="error"]'

    element :info_login, '#login_credentials'
    element :info_senha, 'div.login_password'
    
    def doLogin(login, senha)
        input_login.set nome
        input_senha.set senha
        # btn_logar.click
        click_button("LOGIN")
    end

    def go
        visit 'https://www.saucedemo.com/'
    end

    # def get_placeholderUsername
    # end

    # def get_placeholderPassword
    # end
  
end