import 'package:dart_frog/dart_frog.dart';
import 'package:factory_method/services/selector_fabricas.dart';

Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: 405, body: "metodo no permitido");
  }

  try {
    final body = await context.request.json() as Map<String, dynamic>;
    print("Datos recibidos: $body");
    final tipo = body["tipo"] as String;
    final id = body["id"] as String;
    final limite = (body["limite"] as num).toDouble();
    final monto = (body["monto"] as num).toDouble();

    final nuevoLimite = limite - monto;

    final fabrica = SelectorFabricas.obtenerFabrica(tipo);
    final metodoPago = fabrica.crearPago(limite);
    final montoFinal = metodoPago.calcularMontoFinal(monto);

    return Response.json(body: {
      "success": true,
      "tipo": tipo,
      "id": id,
      "monto_final": montoFinal,
      "nuevo_limite": nuevoLimite,
      "mensaje": "Monto Calculado exitosamente $tipo"
    });
  } catch (e) {
    return Response.json(
      statusCode: 400,
      body: {'success': false, 'mensaje': e.toString()},
    );
  }
}
