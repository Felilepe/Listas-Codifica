mixin Rastreavel 
{
  void gerarEtiquetaEnvio(String nome, String codigo)
  {
    print("=========================");
    print("ETIQUETA DE ENVIO");
    print("Código: $codigo");
    print("Produto: $nome");
    print("=========================");
  }
}