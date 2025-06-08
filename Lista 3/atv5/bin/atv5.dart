import 'dart:io';

List<String> tarefasPendentes = [];
List<String> tarefasConcluidas = [];

void main() 
{
  carregarTarefas();
  
  bool executando = true;
  
  while (executando) 
  {
    print('\n=== Gerenciador de Tarefas ===');
    print('1. Adicionar nova tarefa');
    print('2. Listar tarefas');
    print('3. Marcar tarefa como concluída');
    print('4. Sair');
    print('=============================');
    
    stdout.write('Escolha uma opção: ');
    String? opcao = stdin.readLineSync();
    
    switch (opcao) 
    {
      case '1':
        adicionarTarefa();
        break;
      case '2':
        listarTarefas();
        break;
      case '3':
        marcarComoConcluida();
        break;
      case '4':
        salvarTarefas();
        executando = false;
        print('Saindo do programa...');
        break;
      default:
        print('Opção inválida! Tente novamente.');
    }
  }
}

void carregarTarefas() 
{
  try 
  {
    File arquivo = File('tarefas.txt');
    
    if (arquivo.existsSync()) 
    {
      List<String> linhas = arquivo.readAsLinesSync();
      
      for (String linha in linhas) {
        if (linha.endsWith('_(concluído)')) 
        {
          tarefasConcluidas.add(linha);
        } 
        else 
        {
          tarefasPendentes.add(linha);
        }
      }
      
      print('Tarefas carregadas com sucesso!');
    }
  } 
  catch (e) 
  {
    print('Erro ao carregar tarefas: $e');
  }
}

void adicionarTarefa() 
{
  stdout.write('Digite a nova tarefa: ');
  String? tarefa = stdin.readLineSync();
  
  if (tarefa != null && tarefa.trim().isNotEmpty) 
  {
    tarefasPendentes.add(tarefa.trim());
    print('Tarefa adicionada com sucesso!');
  } 
  else 
  {
    print('Tarefa inválida!');
  }
}

void listarTarefas() 
{
  print('\n=== Tarefas Pendentes ===');
  if (tarefasPendentes.isEmpty) 
  {
    print('Nenhuma tarefa pendente.');
  } 
  else 
  {
    for (int i = 0; i < tarefasPendentes.length; i++) 
    {
      print('${i + 1}. ${tarefasPendentes[i]}');
    }
  }
  
  print('\n=== Tarefas Concluídas ===');
  if (tarefasConcluidas.isEmpty) 
  {
    print('Nenhuma tarefa concluída.');
  } 
  else 
  {
    for (int i = 0; i < tarefasConcluidas.length; i++) 
    {
      print('${i + 1}. ${tarefasConcluidas[i]}');
    }
  }
}

void marcarComoConcluida() 
{
  if (tarefasPendentes.isEmpty) 
  {
    print('Não há tarefas pendentes para marcar como concluída.');
    return;
  }
  
  listarTarefas();
  
  stdout.write('\nDigite o número da tarefa a marcar como concluída: ');
  String? entrada = stdin.readLineSync();
  
  try 
  {
    int indice = int.parse(entrada!) - 1;
    
    if (indice >= 0 && indice < tarefasPendentes.length) 
    {
      String tarefaConcluida = '${tarefasPendentes[indice]}_(concluído)';
      tarefasConcluidas.add(tarefaConcluida);
      tarefasPendentes.removeAt(indice);
      print('Tarefa marcada como concluída!');
    } 
    else 
    {
      print('Número de tarefa inválido!');
    }
  } catch (e) 
  {
    print('Entrada inválida! Digite um número válido.');
  }
}

void salvarTarefas() 
{
  try 
  {
    File arquivo = File('tarefas.txt');
    List<String> todasTarefas = [...tarefasPendentes, ...tarefasConcluidas];
    arquivo.writeAsStringSync(todasTarefas.join('\n'));
    print('Tarefas salvas com sucesso no arquivo tarefas.txt');
  } 
  catch (e) 
  {
    print('Erro ao salvar tarefas: $e');
  }
}