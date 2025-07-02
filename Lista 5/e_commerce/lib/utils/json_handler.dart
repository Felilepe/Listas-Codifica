import 'dart:convert';
import 'dart:io';
import 'package:e_commerce/services/carrinho_de_compras.dart';

void salvarCarrinho(CarrinhoDeCompras carrinho) 
{
  File arquivo = File("carrinho.json");
  String jsonStr = jsonEncode(carrinho.toJson());
  arquivo.writeAsStringSync(jsonStr);
}

//CarregarCarrinho no momento não funciona
