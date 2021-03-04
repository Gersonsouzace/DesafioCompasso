Dado('que acesso a loja virtual da Livelo') do
    @adicionar_produto_carrinho.acessoHome
end
Quando('faço a busca pelo produto {string}') do |produto|
    @adicionar_produto_carrinho.buscarProduto(produto)
end

Quando('clico no produto') do
   @adicionar_produto_carrinho.selecionarProduto
end

Quando('clico em adicionar no carrinho') do
    @adicionar_produto_carrinho.adicionandoNoCarrinho
end

Entao('o item é inserido no meu carrinho') do
    @adicionar_produto_carrinho.verificaPaginaDoCarrinho
end
