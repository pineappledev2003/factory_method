import 'package:factory_method/models/abstarct_forma_pago.dart';

class PagoConPaypal implements FormaPago {
  String? _email;
  String? _password;
  double? _monto;
  double? _saldoPayPal;

  PagoConPaypal({
    required String email,
    required String password,
    required double monto,
    required double saldoPayPal,
  }) {
    _email = email;
    _password = password;
    _monto = monto;
    _saldoPayPal = saldoPayPal;
  }

  String get obtenerEmail {
    return _email!;
  }

  String get obtenerPassword {
    return _password!;
  }

  double get obtenerMonto {
    return _monto!;
  }

  double get obtenerSaldoPayPal {
    return _saldoPayPal!;
  }

  @override
  void procesarPago() {
    if (obtenerMonto > obtenerSaldoPayPal) {
      throw Exception("Saldo insuficiente en PayPal.");
    }

    double comision = 0.02;
    double total = obtenerMonto + (obtenerMonto * comision);

    if (obtenerMonto > 750) {
      total += 7;
    }

    print("Procesando pago con PayPal. Total a pagar: \$$total");
  }
}
