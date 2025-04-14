import 'package:factory_method/factory_method/abstract_factory/abstract_factory.dart';
import 'package:factory_method/factory_method/factory_concrete/credito_factory.dart';
import 'package:factory_method/factory_method/factory_concrete/debito_factory.dart';
import 'package:factory_method/factory_method/factory_concrete/paypal_factory.dart';

class SelectorFabricas {
  static AbstractFactory obtenerFabrica(String tipo) {
    switch (tipo) {
      case "CREDITO":
        return CreditoFactory();
      case "DEBITO":
        return DebitoFactory();
      case "PAYPAL":
        return PaypalFactory();
      default:
        throw Exception("Metodo de pago no soportado");
    }
  }
}
