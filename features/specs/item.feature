#language:pt
@item
Funcionalidade: Item

Como: um possível comprador
Quero: validar as funcionalidades dos Itens
Para: verificar as informações dos itens

Contexto: Acessando a página SauceDemo
Quando acessar a página SauceDemo
E efetuar o login com o usuário "standard_user"

@item_validar
Esquema do Cenario: Validar os textos da página Item
Quando acesso o link <nome> do Item 
Então valido o nome <nome> do Item
E valido a informação da descrição <descricao>
E valido a informação do preço <preco>
E valido a informação do botão <botao> 
Quando volto para a tela de Produto
Então o valor do card daquele link <link> será validado
E o valor da descrição do card daquele link <descricao> será validado
E o valor do preço do card daquele link <preco> será validado
E o valor do botão do card daquele link <botao> será validado
Exemplos:
| nome                      | descricao                 | preco     | botao         |
| "Sauce Labs Backpack"     | "streamlined Sly Pack"    | "$29.99"  | "ADD TO CART" | 
| "Sauce Labs Bike Light"   | "helps when riding"       | "$9.99"   | "ADD TO CART" |

