import 'package:factory_method/factories/interface_factory_pago.dart';
import 'package:factory_method/models/abstarct_forma_pago.dart';
import 'package:factory_method/models/paypal.dart';

class FabricaPaypal implements FabricaPago {

  @override
  FormaPago crearPago(double monto) {
    return PagoConPaypal(
      email: 'usuario@correo.com',
      password: 'secreto',
      monto: monto,
      saldoPayPal: 1000,
    );
  }
}
