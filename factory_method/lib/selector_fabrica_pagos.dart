import 'package:factory_method/factories/factories_credito_card.dart';
import 'package:factory_method/factories/factories_debito_card.dart';
import 'package:factory_method/factories/factories_paypal.dart';
import 'package:factory_method/factories/interface_factory_pago.dart';

class SelectorFabricaPagos {
  static FabricaPago obtenerFabrica(String metodo) {
    switch (metodo.toUpperCase()) {
      case 'CREDITO':
        return FabricaCreditoCard();
      case 'DEBITO':
        return FabricaDebitoCard();
      case 'PAYPAL':
        return FabricaPaypal();
      default:
        throw Exception('Método de pago no soportado');
    }
  }
}
