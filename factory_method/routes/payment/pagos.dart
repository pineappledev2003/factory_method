import 'dart:convert';
import 'package:dart_frog/dart_frog.dart';
import 'package:factory_method/models/abstarct_forma_pago.dart';
import 'package:factory_method/selector_fabrica_pagos.dart';

Future<Response> onRequest(RequestContext context) async {

  if (context.request.method == HttpMethod.post) {

    try {
      
      final body = await context.request.body();
      final data = jsonDecode(body);

      final String metodo = data['metodo'] as String;
      final double monto = (data['monto'] as num).toDouble();

      final fabrica = SelectorFabricaPagos.obtenerFabrica(metodo);
      final FormaPago pago = fabrica.crearPago(monto);

     try {
        pago.procesarPago();
      } catch (e) {
        return Response.json(
          statusCode: 400,
          body: {
            'status': 'error',
            'message': 'Error al procesar el pago',
            'error': e.toString(),
          },
        );
      }

      return Response.json(body: {
        'message': 'Pago procesado con éxito',
        'monto': monto,
        'metodo': metodo,
        
      });
    } catch (e) {
      return Response.json(
        statusCode: 400, 
        body: {
        'status': 'error',
        'message': 'Error procesando el pago: ${e.toString()}',
        }
      );
    }
  }

  return Response(
    statusCode: 405, 
    body: 'Método no permitido'
  );
}
