//1) Dado a sequência de Fibonacci, onde se inicia por 0 e 1 e o próximo valor sempre será a soma dos 2 valores anteriores (exemplo: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34...),
// escreva um programa na linguagem que desejar onde, informado um número, ele calcule a sequência de Fibonacci
//e retorne uma mensagem avisando se o número informado pertence ou não a sequência.


import 'dart:io';

bool pertenceAFibonacci() {
  print('Digite um número para verificar se pertence à sequência de Fibonacci:');
  String? input = stdin.readLineSync();

  // Tratamento de erros
  if (input == null || input.isEmpty) {
    print('Digite um número');
    return false;
  }

  int? numero = int.tryParse(input);

  if (numero == null) {
    print('Digite um número válido');
    return false;
  }
  if (numero < 0) {
    print('Digite um número positivo');
    return false;
  }

  int a = 0, b = 1;
  while (b <= numero) {
    if (b == numero) {
      print('$numero pertence à sequência de Fibonacci.');
      return true;
    }
    int temp = b;
    b = a + b;
    a = temp;
  }

  print('$numero não pertence à sequência de Fibonacci.');
  return false;
}