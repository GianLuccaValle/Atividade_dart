import 'dart:io';

void main() {
  print('Digite o salário mensal atual:');
  double salarioAtual = double.parse(stdin.readLineSync()!);
  
  print('Digite o percentual de reajuste (%):');
  double percentualReajuste = double.parse(stdin.readLineSync()!);
  
  double novoSalario = salarioAtual * (1 + percentualReajuste / 100);
  
  print('O novo salário é: R\$ ${novoSalario.toStringAsFixed(2)}');
}