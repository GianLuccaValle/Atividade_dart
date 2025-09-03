import 'dart:io';

void main() {
  stdout.write("Digite um número: ");
  int numero = int.parse(stdin.readLineSync()!);

  int antecessor = numero - 1;

  print("O antecessor de $numero é $antecessor");
}
