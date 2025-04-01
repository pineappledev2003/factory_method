import 'package:factory_method/models/tarjeta_base.dart';

class PagoConDebitoCard extends TarjetaBase {
  double? _saldoDisponible;

  PagoConDebitoCard({
    required super.numeroTarjeta,
    required super.nombreTitular,
    required super.cvv,
    required super.monto,
    required double saldoDisponible,
  }) {
    _saldoDisponible = saldoDisponible;
  }

  @override
  void procesarPago() {
    if (obtenerMonto > _saldoDisponible!) {
      throw Exception("Fondos insuficientes para completar la transaccion");
    }

    double comision = 0.01;
    double total = obtenerMonto + (obtenerMonto * comision);

    if (obtenerMonto > 500) {
      total += 5;
    }

    print("Procesando pago con tarjeta debito. Total a pagar: \$$total");
  }
}
