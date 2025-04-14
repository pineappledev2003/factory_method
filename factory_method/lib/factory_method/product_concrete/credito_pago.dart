import 'package:factory_method/factory_method/abstract_product/abstract_pago.dart';

class CreditoPago implements AbstractPago {
  final double comisionRate = 0.03;
  final double extraCharge = 10;
  final double _limiteCredito;

  CreditoPago(this._limiteCredito);

  @override
  double calcularMontoFinal(double monto) {
    if (monto > _limiteCredito) {
      throw Exception("El monto excede el límite de la tarjeta de crédito.");
    }

    double finalMonto = monto + (monto * comisionRate);
    if (monto > 1000) {
      finalMonto += extraCharge;
    }

    return finalMonto;
  }
}
