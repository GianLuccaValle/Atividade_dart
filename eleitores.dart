import 'dart:io';

void main() {
  stdout.write("Digite o número total de eleitores: ");
  int totalEleitores = int.parse(stdin.readLineSync()!);

  stdout.write("Digite o número de votos brancos: ");
  int votosBrancos = int.parse(stdin.readLineSync()!);

  stdout.write("Digite o número de votos nulos: ");
  int votosNulos = int.parse(stdin.readLineSync()!);

  stdout.write("Digite o número de votos válidos: ");
  int votosValidos = int.parse(stdin.readLineSync()!);

  if (totalEleitores < (votosBrancos + votosNulos + votosValidos)) {
    print("Erro: A soma de votos brancos, nulos e válidos não pode exceder o total de eleitores!");
    return;
  }

  double percentualBrancos = (votosBrancos / totalEleitores) * 100;
  double percentualNulos = (votosNulos / totalEleitores) * 100;
  double percentualValidos = (votosValidos / totalEleitores) * 100;

  print("Percentual de votos brancos: ${percentualBrancos.toStringAsFixed(2)}%");
  print("Percentual de votos nulos: ${percentualNulos.toStringAsFixed(2)}%");
  print("Percentual de votos válidos: ${percentualValidos.toStringAsFixed(2)}%");
}