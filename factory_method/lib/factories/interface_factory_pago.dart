//? Definimos la estructura base que deben seguir todas las fábricas de pago.
//? Cada fábrica concreta implementará este método para
//? crear una forma de pago específica.

//! "Plano de fabricacion": es la estructura base

import 'package:factory_method/models/abstarct_forma_pago.dart';

abstract class FabricaPago {
  FormaPago crearPago(double monto);
}
