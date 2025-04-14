

import 'package:factory_method/factory_method/abstract_product/abstract_pago.dart';

abstract class AbstractFactory {
  AbstractPago crearPago(double limite);
}