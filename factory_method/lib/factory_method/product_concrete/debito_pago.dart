import 'package:factory_method/factory_method/abstract_product/abstract_pago.dart';

class DebitoPago implements AbstractPago {
  final double comisionRate = 0.01;
  final double extraCharge = 5;

  final double _saldoDisponible;

  DebitoPago(this._saldoDisponible);

  @override
  double calcularMontoFinal(double monto) {
    if (monto > _saldoDisponible) {
      throw Exception("El monto excede el saldo de la tarjeta de debito.");
    }
    double finalMonto = monto + (monto * comisionRate);
    if (monto > 500) {
      finalMonto += extraCharge;
    }

    return finalMonto;
  }
}
