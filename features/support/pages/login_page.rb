require_relative "./base_page.rb"

class LoginPage < BasePage

    element :input_login, '#user-name'
    element :input_password, '#password'
    element :btn_login, '#login-button'
    element :text_alert, 'h3[data-test="error"]'

    element :info_login, '#login_credentials'
    element :info_password, 'div.login_password'
    
    def doLogin(userName, userPassword)
        #binding.pry
        input_login.set userName
        input_password.set userPassword
        # btn_login.click
        click_button("Login")
    end

    def go
        visit 'https://www.saucedemo.com/'
    end

    # def get_placeholderUsername
    # end

    # def get_placeholderPassword
    # end
  
end