import 'conta.dart';

void main() {
  Conta contaDiogo = Conta(0,
      titular: "Diogo Jose da Silva",
      agencia: 2536,
      numero_conta: 25487,
      tipo: 1,
      tem_saldo: false);

  print("Titula: ${contaDiogo.titular}\n"
      "Agência: ${contaDiogo.agencia}\n"
      "Conta: ${contaDiogo.numero_conta}\n"
      "Tipo: ${contaDiogo.tipo}\n"
      "Saldo: ${contaDiogo.saldo}\n");

  print("Depositar valor");
  contaDiogo.depositar = 200;
  contaDiogo.depositar = 75;
  

  print("\nSacar valor");

  contaDiogo.sacar = 175;

  print(contaDiogo.saldo);
}
