import 'dart:io';

double _lerNota() {
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

void main() {
  print('Cálculo de Média Ponderada');
  print('==========================');
  
  try {
    print('Digite a primeira nota (peso 2):');
    double n1 = _lerNota();
    
    print('Digite a segunda nota (peso 3):');
    double n2 = _lerNota();
    
    print('Digite a terceira nota (peso 5):');
    double n3 = _lerNota();
    
    double mediaFinal = (n1 * 2 + n2 * 3 + n3 * 5) / 10;
    
    print('A média final do aluno é: ${mediaFinal.toStringAsFixed(2)}');
  } catch (e) {
    print('Ocorreu um erro: $e');
  }
}