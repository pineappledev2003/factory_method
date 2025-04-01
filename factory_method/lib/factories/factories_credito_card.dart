import 'package:factory_method/factories/interface_factory_pago.dart';
import 'package:factory_method/models/abstarct_forma_pago.dart';
import 'package:factory_method/models/credito_card.dart';

class FabricaCreditoCard implements FabricaPago {
  @override
  FormaPago crearPago(double monto) {
    return PagoConCreditoCard(
      numeroTarjeta: '1234 5678 9012 3456',
      nombreTitular: 'Juan Pérez',
      cvv: '123',
      monto: monto,
      limiteCredito: 5000,
    );
  }
}
