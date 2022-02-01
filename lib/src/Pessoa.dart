class Pessoa {
// CONCEITOS NULL-SAFETY
// Dart Anaylser => responsável por criticar o código, o impedindo de compilação
// ? => a variável pode ser nullable, porém não consegue invocar método
// ?? => int valor = valorNullable ?? 0; -- se encontrar valor, atribui 'null', senão, atribui '0'
// ! => int? valorNullable = 1; int valor = valorNullable!; (use quando tem certeza que é NON-NULLABLE)
// as => return meuValor() as int; (exemplo de um cast)
// ?. => Pessoa? d; print(d?.nome()); (se 'd?' for NULLABLE, nem invoca 'nome()')
// Never => um método nunca será finalizado, mas sempre será abortado (ex.: exception) //TODO inserir exemplo
// late* => quando a variável é inicializada tardeamente
// * evite, se possível, usá-la ou garanta que a varaiável será inicializada antes de utilizá-la
// _ => modificador 'private'
// class ... { abstract String nomeVariavel; } => Cria get/set de forma encapsulada

  String? _nome;
  late int _idade;
  late double _altura;
  late double _peso;
  List<String?>?
      listas; // = [null]; // o objeto pode ser nulo e pode ter um item nulo
  Map<String, int?>?
      mapas; // = {'a': null, 'b': null}; // o objeto pode ser nulo e ter uma chave/valor nulos

  String getNome() => _nome as String;
  setNome(String nome) => _nome = nome;

  int getIdade() => _idade;
  setIdade(int idade) => _idade = idade;

  double getAltura() => _altura;
  setAltura(double altura) => _altura = altura;

  // É possível omitir o tipo de retorno
  getPeso() => _peso;
  setPeso(double peso) => _peso = peso;

  calcularIMC() => _peso / (_altura * _altura);

  // {int? idade} <- parâmetro opcional
  bool verificarSeEhMaiorDeIdade() => _idade >= 18;

  // para se tornar opcional, basta remover 'required'
  campoObrigatorio(String nome, {required int idade}) {
    print(nome);
    print(idade);
  }
}
