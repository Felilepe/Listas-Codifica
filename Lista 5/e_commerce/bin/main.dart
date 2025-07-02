import 'package:e_commerce/models/prod_eletronico.dart';
import 'package:e_commerce/services/carrinho_de_compras.dart';
import 'package:e_commerce/services/gerenciador_estoque.dart';
import 'package:e_commerce/utils/json_handler.dart';

void main() 
{
GerenciadorEstoque estoque = GerenciadorEstoque();
ProdutoEletronico meuProduto = ProdutoEletronico(nome: 'Monitor 4k', codigo: '123456', preco: 7000.00, garantiaMeses: 12);

meuProduto.gerarEtiquetaEnvio(meuProduto.nome, meuProduto.codigo);


estoque.adicionarEstoque(meuProduto, 4);

estoque.exibirEstoque();

CarrinhoDeCompras carrinho = CarrinhoDeCompras();

carrinho.adicionarProduto(meuProduto);

salvarCarrinho(carrinho);




}
