class ProdutoCarrinho
    include Capybara::DSL
   
    def acessoHome
        visit "https://www.livelo.com.br"
    end

    def buscarProduto(produto)
        find('.search').set produto
        find('.bsearch ').click
    end                             

    def selecionarProduto
        find('#CC-product-grid-title-LVL11375073-00').click
    end

    def adicionandoNoCarrinho
        click_button "Adicionar ao carrinho"
    end
    def verificaPaginaDoCarrinho
       page.has_xpath?('/carts')
    end
end