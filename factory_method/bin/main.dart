import 'package:factory_method/models/abstarct_forma_pago.dart';
import 'package:factory_method/selector_fabrica_pagos.dart';


void main(){
  
  final fabrica = SelectorFabricaPagos.obtenerFabrica("CREDITO");
  final FormaPago pago = fabrica.crearPago(1500);
  pago.procesarPago();
}