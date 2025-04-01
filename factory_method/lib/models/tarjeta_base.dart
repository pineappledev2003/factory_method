import 'package:factory_method/models/abstarct_forma_pago.dart';

class TarjetaBase implements FormaPago {
  String? _numeroTarjeta;
  String? _nombreTitular;
  String? _cvv;
  double? _monto;

  TarjetaBase({
    required String numeroTarjeta,
    required String nombreTitular,
    required String cvv,
    required double monto,
  }) {
    _numeroTarjeta = numeroTarjeta;
    _nombreTitular = nombreTitular;
    _cvv = cvv;
    _monto = monto;
  }

  String get obtenerNumeroTarjeta {
    return _numeroTarjeta!;
  }

  String get obtenerNombreTitular {
    return _nombreTitular!;
  }

  String get obtenerCvv {
    return _cvv!;
  }

  double get obtenerMonto {
    return _monto!;
  }

  @override
  void procesarPago() {}
}
