import 'conta.dart';

void main() {
  Conta pf = Conta("Diogo Jose da Silva", 124, 25365, 1, 2000, true);

  print("Titula: ${pf.titular}\n"
      "Agência: ${pf.agencia}\n"
      "Conta: ${pf.numero_conta}\n"
      "Tipo: ${pf.tipo}\n"
      "Saldo: ${pf.saldo.toStringAsFixed(2)}\n");

  pf.deposito(1000);

  print("\n Fazendo retirada...");

  pf.seque(5000);

  pf.seque(800);
}
