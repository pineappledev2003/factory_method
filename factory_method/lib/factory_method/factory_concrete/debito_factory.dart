import 'package:factory_method/factory_method/abstract_factory/abstract_factory.dart';
import 'package:factory_method/factory_method/abstract_product/abstract_pago.dart';
import 'package:factory_method/factory_method/product_concrete/debito_pago.dart';

class DebitoFactory implements AbstractFactory {
  @override
  AbstractPago crearPago(double limite) {
    return DebitoPago(limite);
  }
}
