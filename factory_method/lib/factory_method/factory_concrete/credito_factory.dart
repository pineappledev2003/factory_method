

import 'package:factory_method/factory_method/abstract_factory/abstract_factory.dart';
import 'package:factory_method/factory_method/abstract_product/abstract_pago.dart';
import 'package:factory_method/factory_method/product_concrete/credito_pago.dart';

class CreditoFactory implements AbstractFactory {
  @override
  AbstractPago crearPago(double limite) {
    return CreditoPago(limite);
  }
}