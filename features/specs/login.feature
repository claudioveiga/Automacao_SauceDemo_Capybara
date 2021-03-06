            #language:pt
            @login
            Funcionalidade: Login

            Como: um possível comprador
            Quero: validar as funcionalidades da pagina de login
            Para: testar as funções e erros de login

            Contexto: Acessando a página SauceDemo
            Quando acessar a página SauceDemo

            Cenario: Validando a página SauceDemo
            Então faremos a validação da página de login

            @login_certo
            Cenario: Login correto
            Quando efetuar o login com o usuário "standard_user"
            Então o seguinte texto estará na página "PRODUCTS"

            Cenario: Login errado
            Quando efetuar o login com a senha errada
            Então a mensagem de erro de usuário ou senha irá aparecer

            Esquema do Cenario: Efetuando Logins alternativos
            Quando efetuar o login com o usuário <usuario>
            Então o seguinte texto estará na página <mensagem>
            Exemplos:
            | usuario                   | mensagem                                              |
            | "standard_user"           | "PRODUCTS"                                            |
            | "locked_out_user"         | "Epic sadface: Sorry, this user has been locked out." |
            | "performance_glitch_user" | "PRODUCTS"                                            |
            | "problem_user"            | "PRODUCTS"                                            |

