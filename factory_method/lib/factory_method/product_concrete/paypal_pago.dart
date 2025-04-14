import 'package:factory_method/factory_method/abstract_product/abstract_pago.dart';

class PaypalPago implements AbstractPago {
  final double comisionRate = 0.02;
  final double extraCharge = 7;
  final double _limitePayPal;

  PaypalPago(this._limitePayPal);

  @override
  double calcularMontoFinal(double monto) {
    if (monto > _limitePayPal) {
      throw Exception("El monto excede el límite de la tarjeta paypal.");
    }
    double finalMonto = monto + (monto * comisionRate);

    if (monto > 750) {
      finalMonto += extraCharge;
    }

    return finalMonto;
  }
}
