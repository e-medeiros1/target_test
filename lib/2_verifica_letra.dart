//Escreva um programa que verifique, em uma string, a existência da letra ‘a’, seja maiúscula ou minúscula,
//além de informar a quantidade de vezes em que ela ocorre.

import 'dart:io';

void verificaLetra() {
  print('Digite uma string: ');
  String input = stdin.readLineSync()!;

  //Tratamento de erros
  if (input.isEmpty) {
    print('Digite uma palavra');
    return;
  }

  String converteParaMinusculo = input.toLowerCase();

  int contagem = converteParaMinusculo.split('a').length - 1;

  if (contagem > 0) {
    print('A letra "a" aparece $contagem vezes na string.');
  } else {
    print('A letra "a" não foi encontrada na string.');
  }
}
