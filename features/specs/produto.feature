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
            Então o seguinte texto estará na página "PRODUCTS"

            @prod_2_itens
            Esquema do Cenario: Validar os dados dos itens da página de produto
            Então o valor do card daquele link <link> será validado
            E o valor da descrição do card daquele link <descricao> será validado
            E o valor do preço do card daquele link <preco> será validado
            E o valor do botão do card daquele link <botao> será validado
            Exemplos:
            | link                      | descricao                 | preco     | botao         |
            | "Sauce Labs Backpack"     | "streamlined Sly Pack"    | "$29.99"  | "ADD TO CART" | 
            | "Sauce Labs Bike Light"   | "helps when riding"       | "$9.99"   | "ADD TO CART" |

            @prod_validando_filtros
            Esquema do Cenario: Validar o funcionamento dos filtros
            Quando clico e opto pelo filtro <filtroEscolhido>
            Entao o primeiro produto será <item>
            Exemplos:
            | filtroEscolhido       | item                                |
            | "Name (A to Z)"       | "Sauce Labs Backpack"               |
            | "Name (Z to A)"       | "Test.allTheThings() T-Shirt (Red)" |
            | "Price (low to high)" | "Sauce Labs Onesie"                 |
            | "Price (high to low)" | "Sauce Labs Fleece Jacket"          |
