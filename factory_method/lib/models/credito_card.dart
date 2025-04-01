import 'package:factory_method/models/tarjeta_base.dart';

class PagoConCreditoCard extends TarjetaBase {
  double? _limiteCredito;

  PagoConCreditoCard({
    required super.numeroTarjeta,
    required super.nombreTitular,
    required super.cvv,
    required super.monto,
    required double limiteCredito,
  }) {
    _limiteCredito = limiteCredito;
  }

  @override
  void procesarPago() {
    if (obtenerMonto > _limiteCredito!) {
      throw Exception(
          'Transacción denegada: El monto excede el límite de crédito (\$$_limiteCredito).');
    }

    double comision = 0.03;
    double total = obtenerMonto + (obtenerMonto * comision);

    if (obtenerMonto > 1000) {
      total += 10;
    }

    print('Procesando pago con tarjeta de crédito. Total a pagar: \$$total');
  }
}
