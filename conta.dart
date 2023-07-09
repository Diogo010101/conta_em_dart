class Conta {
  String titular;
  int agencia;
  int numero_conta;
  int tipo;
  /*
  01 = corrente
  02 = poupança
   */
  double _saldo;
  bool tem_saldo;

  Conta(this._saldo,
      {required this.titular,
      required this.agencia,
      required this.numero_conta,
      required this.tipo,
      required this.tem_saldo}) {
    if (_saldo > 0) {
      tem_saldo = true;
      print("O saldo atual da sua conta é de ${_saldo.toStringAsPrecision(2)}");
    } else {
      tem_saldo = false;
      print("Seu saldo é de ${_saldo.toStringAsPrecision(2)}");
    }
  }

//Métodos da Conta

  double get saldo {
    return this._saldo;
  }

  bool temSaldo(double saldo) {
    if (_saldo > 0) {
      tem_saldo = true;
      print("O saldo atual da sua conta é de ${_saldo.toStringAsPrecision(2)}");
    } else {
      tem_saldo = false;
      print("Seu saldo é de ${_saldo.toStringAsPrecision(2)}");
    }
    return tem_saldo;
  }

  void set depositar(double valor_deposito) {
    _saldo = this._saldo;
    print("Saldo anterior: ${_saldo.toStringAsFixed(2)}");
    print("Você fez um depósito de ${valor_deposito}");
    _saldo = _saldo + valor_deposito;
    print("Novo Saldo: ${_saldo.toStringAsFixed(2)}");
  }

  void set sacar(double valor_saque) {
    _saldo = this._saldo;
    print("Saldo em conta: ${_saldo}");
    print("Valor do saque: ${valor_saque}");
    _saldo = _saldo - valor_saque;
    print("Saldo restante em conta: ${_saldo}");
  }
}



/**if (_saldo < valor_saque) {
      print("Saldo insuficiente!\n"
          "Saldo atual em conta: ${_saldo.toStringAsFixed(2)}");
    } else if (_saldo >= valor_saque) {
      _saldo - valor_saque;
      print("Você sacou: ${valor_saque.toStringAsFixed(2)}");
      print("${_saldo}");
    } else {
      print("Verifique os valores digitados");
    } */