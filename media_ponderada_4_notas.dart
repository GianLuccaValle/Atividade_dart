import 'dart:io';

void main() {
  print('=== CÁLCULO DE MÉDIA PONDERADA ===');
  
  print('Digite o nome do aluno:');
  String nome = stdin.readLineSync() ?? 'Aluno';
  
  List<double> notas = [];
  List<double> pesos = [];
  
  for (int i = 1; i <= 4; i++) {
    print('Digite a nota $i:');
    notas.add(_lerNumero());
  }
  
  for (int i = 1; i <= 4; i++) {
    print('Digite o peso da nota $i:');
    pesos.add(_lerNumero());
  }
  
  double somaNotasPonderadas = 0;
  double somaPesos = 0;
  
  for (int i = 0; i < 4; i++) {
    somaNotasPonderadas += notas[i] * pesos[i];
    somaPesos += pesos[i];
  }
  
  double mediaFinal = somaNotasPonderadas / somaPesos;
  
  print('\n=== RESULTADO ===');
  print('Aluno: $nome');
  for (int i = 0; i < 4; i++) {
    print('Nota ${i + 1}: ${notas[i]} (Peso: ${pesos[i]})');
  }
  print('Média Final: ${mediaFinal.toStringAsFixed(2)}');
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