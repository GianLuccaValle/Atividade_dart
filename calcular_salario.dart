import 'dart:io';

void main() {
  print('=== CALCULADORA DE SALÁRIO LÍQUIDO ===');
  
  print('Digite quanto você ganha por hora:');
  double valorHora = _lerNumeroPositivo();
  
  print('Digite o número de horas trabalhadas no mês:');
  double horasTrabalhadas = _lerNumeroPositivo();
  
  double salarioBruto = valorHora * horasTrabalhadas;
  
  double impostoRenda = salarioBruto * 0.11;
  double inss = salarioBruto * 0.08;
  double sindicato = salarioBruto * 0.05;
  
  double salarioLiquido = salarioBruto - impostoRenda - inss - sindicato;
  
  print('\n=== DEMONSTRATIVO DE PAGAMENTO ===');
  print('+ Salário Bruto      : R\$ ${salarioBruto.toStringAsFixed(2)}');
  print('- IR (11%)           : R\$ ${impostoRenda.toStringAsFixed(2)}');
  print('- INSS (8%)          : R\$ ${inss.toStringAsFixed(2)}');
  print('- Sindicato (5%)     : R\$ ${sindicato.toStringAsFixed(2)}');
  print('= Salário Líquido    : R\$ ${salarioLiquido.toStringAsFixed(2)}');
  
  double totalDescontos = impostoRenda + inss + sindicato;
  double percentualDescontos = (totalDescontos / salarioBruto) * 100;
  
  print('\n=== RESUMO ===');
  print('Total de descontos   : R\$ ${totalDescontos.toStringAsFixed(2)}');
  print('Percentual descontos : ${percentualDescontos.toStringAsFixed(2)}%');
}

// Função para ler números positivos com tratamento de erro
double _lerNumeroPositivo() {
  while (true) {
    try {
      String input = stdin.readLineSync() ?? '';
      input = input.replaceAll(',', '.');
      double numero = double.parse(input);
      
      if (numero > 0) {
        return numero;
      } else {
        print('Valor inválido. Digite um número maior que zero:');
      }
    } catch (e) {
      print('Valor inválido. Digite um número válido:');
    }
  }

}
