import 'dart:io';

void main() {
  print('=== CÁLCULOS DIVERSOS ===');
  
  print('Digite o primeiro número inteiro:');
  int numero1 = _lerInteiro();
  
  print('Digite o segundo número inteiro:');
  int numero2 = _lerInteiro();
  
  print('Digite um número real:');
  double numeroReal = _lerReal();
  
  double resultadoA = (2 * numero1) * (numero2 / 2);
  double resultadoB = (3 * numero1) + numeroReal;
  
  print('\n=== RESULTADOS ===');
  print('a) Produto do dobro do primeiro com metade do segundo: ${resultadoA.toStringAsFixed(2)}');
  print('b) Soma do triplo do primeiro com o terceiro: ${resultadoB.toStringAsFixed(2)}');
}

int _lerInteiro() {
  while (true) {
    try {
      String input = stdin.readLineSync() ?? '';
      return int.parse(input);
    } catch (e) {
      print('Valor inválido. Digite um número inteiro:');
    }
  }
}

double _lerReal() {
  while (true) {
    try {
      String input = stdin.readLineSync() ?? '';
      input = input.replaceAll(',', '.');
      return double.parse(input);
    } catch (e) {
      print('Valor inválido. Digite um número válido:');
    }
  }
}