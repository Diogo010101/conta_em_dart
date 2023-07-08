class Conta {
  String titular;
  int agencia;
  int numero_conta;
  int tipo;
  /*
  01 = corrente
  02 = poupança
   */
  double saldo;
  bool tem_saldo;

  Conta(this.titular, this.agencia, this.numero_conta, this.tipo, this.saldo, this.tem_saldo);

//Métodos da Conta

  bool temSaldo(double saldo) {
    if (saldo > 0) {
      tem_saldo = true;
      print("O saldo atual da sua conta é de ${saldo.toStringAsPrecision(2)}");
    } else {
      tem_saldo = false;
      print("Seu saldo é de ${saldo.toStringAsPrecision(2)}");
    }
    return tem_saldo;
  }

  void deposito(double valor_deposito) {
    print("Saldo anterior: ${saldo.toStringAsFixed(2)}");
    saldo = saldo + valor_deposito;
    print("Novo Saldo: ${saldo.toStringAsFixed(2)}");
  }

  seque(double valor_saque) {
    if (saldo >= valor_saque) {
      saldo - valor_saque;
      print("Você sacou: ${valor_saque.toStringAsFixed(2)}");
    } else {
      print("Saldo insuficiente!\n"
          "Saldo atual em conta: ${saldo.toStringAsFixed(2)}");
    }
  }
}
