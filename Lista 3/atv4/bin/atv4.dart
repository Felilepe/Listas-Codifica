import 'dart:io';

Map<String, String> lerConfiguracoes([String nomeArquivo = 'config.txt']) 
{
  try {
    
    File arquivo = File(nomeArquivo);
    
    if (!arquivo.existsSync()) 
    {
      print('Erro: O arquivo "$nomeArquivo" não foi encontrado.');
      return {};
    }
    
    List<String> linhas = arquivo.readAsLinesSync();
    Map<String, String> configuracoes = {};
    
    for (int i = 0; i < linhas.length; i++) 
    {
      String linha = linhas[i].trim(); 
      
      
      if (linha.isEmpty || linha.startsWith('#')) 
      {
        continue;
      }
      
      
      List<String> partes = linha.split('=');
      
      
      if (partes.length != 2) 
      {
        print('Aviso: Formato inválido na linha ${i + 1} ("$linha") - ignorando.');
        continue;
      }
      
    
      String chave = partes[0].trim();
      String valor = partes[1].trim();
      configuracoes[chave] = valor;
      
   
      print('${chave.padRight(15)}: $valor');
    }
    
    return configuracoes;
    
  } on FileSystemException catch (e) 
  {

    print('Erro ao acessar o arquivo "$nomeArquivo": ${e.message}');
    return {};
  } 
  catch (e) 
  {
    
    print('Erro inesperado ao ler o arquivo: $e');
    return {};
  }
}

void main() 
{
  print('=== Lendo configurações ===');
  final configs = lerConfiguracoes();
  
  if (configs.isNotEmpty) 
  {
    print('\nConfigurações carregadas com sucesso!');
  } 
  else 
  {
    print('\nNenhuma configuração foi carregada.');
  }
}
