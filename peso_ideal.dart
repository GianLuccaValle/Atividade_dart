import 'dart:io';

void main() {
  print('=== CALCULADORA DE PESO IDEAL ===');
  
  // Solicita a altura
  print('Digite sua altura em metros (ex: 1.75):');
  double altura = _lerAltura();
  
  // Solicita o sexo
  print('Digite seu sexo (M para masculino, F para feminino):');
  String sexo = _lerSexo();
  
  // Calcula o peso ideal
  double pesoIdeal;
  if (sexo == 'M' || sexo == 'm') {
    pesoIdeal = (72.7 * altura) - 58;
  } else {
    pesoIdeal = (62.1 * altura) - 44.7;
  }
  
  // Exibe o resultado
  print('\n=== RESULTADO ===');
  print('Altura: ${altura.toStringAsFixed(2)}m');
  print('Sexo: ${sexo.toUpperCase()}');
  print('Peso ideal: ${pesoIdeal.toStringAsFixed(2)}kg');
}

// Função para ler a altura com validação
double _lerAltura() {
  while (true) {
    try {
      String input = stdin.readLineSync() ?? '';
      input = input.replaceAll(',', '.');
      double altura = double.parse(input);
      
      if (altura > 0 && altura <= 2.5) {
        return altura;
      } else {
        print('Altura inválida. Digite um valor entre 0.5 e 2.5 metros:');
      }
    } catch (e) {
      print('Valor inválido. Digite uma altura válida (ex: 1.75):');
    }
  }
}

// Função para ler o sexo com validação
String _lerSexo() {
  while (true) {
    try {
      String input = stdin.readLineSync()?.toUpperCase() ?? '';
      
      if (input == 'M' || input == 'F') {
        return input;
      } else {
        print('Sexo inválido. Digite M para masculino ou F para feminino:');
      }
    } catch (e) {
      print('Erro na leitura. Digite M para masculino ou F para feminino:');
    }
  }
}