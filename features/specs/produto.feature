            #language:pt
            @produto
            Funcionalidade: Produto

            Como: um possível comprador
            Quero: validar as funcionalidades da pagina de Produto
            Para: verificar a assertividade dos itens de Produto

            Contexto: Acessando a página SauceDemo
            Quando acessar a página SauceDemo
            E efetuar o login com o usuário "standard_user"

            @prod_titulo
            Cenario: Validando a página de Produto
            Então faremos a validação da página de produtos

            @prod_2_itens
            Esquema do Cenario: Validar os dados dos itens da página de produto
            Então os seguintes <produtos> serão validados
            E o precos <precos> de cada um são
            Exemplos:
            | produtos                | precos   |
            | "Sauce Labs Backpack"   | "$29.99" |
            | "Sauce Labs Bike Light" | "$9.99"  |

            @prod_validando_filtros
            Esquema do Cenario: Validar o funcionamento dos filtros
            Quando clico no botão de filtros
            E opto pelo filtro <filtroEscolhido>
            Entao o primeiro produto será <item>
            Exemplos:
            | filtroEscolhido       | item                                |
            | "Name (A to Z)"       | "Sauce Labs Backpack"               |
            | "Name (Z to A)"       | "Test.allTheThings() T-Shirt (Red)" |
            | "Price (low to high)" | "Sauce Labs Onesie"                 |
            | "Price (high to low)" | "Sauce Labs Fleece Jacket"          |
