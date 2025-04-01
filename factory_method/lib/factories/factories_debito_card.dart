import 'package:factory_method/factories/interface_factory_pago.dart';
import 'package:factory_method/models/abstarct_forma_pago.dart';
import 'package:factory_method/models/debito_card.dart';

class FabricaDebitoCard implements FabricaPago {
  @override
  FormaPago crearPago(double monto) {
    return PagoConDebitoCard(
      numeroTarjeta: '9876 5432 1098 7654',
      nombreTitular: 'María Gómez',
      cvv: '456',
      monto: monto,
      saldoDisponible: 2000,
    );
  }
}
