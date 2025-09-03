import 'dart:io';

void main() {
  print('=== CONVERSOR DE TEMPERATURA ===');
  print('Fahrenheit para Celsius');
  print('==============================');
  
  print('Digite a temperatura em graus Fahrenheit:');
  double fahrenheit = _lerNumero();
  
  // Converte para Celsius usando a fórmula
  double celsius = (5 * (fahrenheit - 32)) / 9;
  
 
  print('\n=== RESULTADO ===');
  print('$fahrenheit°F = ${celsius.toStringAsFixed(2)}°C');
}


double _lerNumero() {
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