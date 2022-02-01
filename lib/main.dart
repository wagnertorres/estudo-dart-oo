import 'dart:io';
import 'package:dart_oo/src/pessoa.dart';

// não precisa informar a palavra reservada "new"
Pessoa pessoa = Pessoa();
main() {
  print("Escreva sua nome:");
  pessoa.setNome(stdin.readLineSync()!);

  print("Escreva sua idade:");
  pessoa.setIdade(int.parse(stdin.readLineSync()!));

  print("Escreva sua altura:");
  pessoa.setAltura(double.parse(stdin.readLineSync()!));

  print("Escreva sua peso:");
  pessoa.setPeso(double.parse(stdin.readLineSync()!));

  print("Nome: ${pessoa.getNome()}");
  print("IMC: ${pessoa.calcularIMC()}");
  print("Maior de idade: ${pessoa.verificarSeEhMaiorDeIdade()}");

  //print(pessoa.campoObrigatorio("Fulano", idade: 100));
}
