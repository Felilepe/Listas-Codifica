import 'dart:io';

List<String> criarLista()
{
  List<String> itens = []; 
  String? item;
  do
  {
    print("Insira um item para lista(digite 'fim' para finalizar): ");
    item = stdin.readLineSync() ?? ' ';
    if(item != 'fim')
    {
    itens.add(item);
    }
  }
  while(item != 'fim');
  
  return itens;
}

void salvarListaEmArquivo(List<String> itens, String nome)
{
  try
  {
    File arquivo = File(nome);
    arquivo.writeAsStringSync(itens.join('\n'));
    print("Arquivo '$nome' salvo com sucesso");
  }
  catch(e)
  {
    print("Erro ao salvar o arquivo: $e");
  }
}

void main() 
{
  List<String> lista = criarLista();
  String? nome;

  if(lista.isNotEmpty)
  {
    print("Insira o nome do arquivo(ex: lista_compras.txt)");
    nome = stdin.readLineSync();

    if(nome != null && nome.isNotEmpty)
    {
      salvarListaEmArquivo(lista, nome);
    }
    else
    {
      print("Nome inválido");
    } 
  }
  else
  {
    print("Lista vazia");
  }
}
