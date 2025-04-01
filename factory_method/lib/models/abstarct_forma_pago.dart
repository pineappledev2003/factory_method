//? Definimos la estructura base para los métodos de pago.  
//? Cada forma de pago concreta deberá implementar este comportamiento.  

//!  "Plano de fabricacion": es la estructura base

abstract class FormaPago {
  void procesarPago();
}
