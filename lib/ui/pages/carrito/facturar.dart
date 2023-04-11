import 'package:compras_getx/domain/controller/gestionarticulo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Facturar extends StatelessWidget {
  const Facturar({super.key});

  @override
  Widget build(BuildContext context) {
    ComprasController controlc = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Facturacion"),
      ),
      body: ListView.builder(
          itemCount: controlc.listaGcompra.length,
          itemBuilder: (context, index) {
            return ListTile(
              trailing: CircleAvatar(
                backgroundImage:
                    NetworkImage(controlc.listaGcompra[index].foto),
              ),
              title: Text(controlc.listaGcompra[index].detalle),
              subtitle: Text(controlc.listaGcompra[index].codigo),
            );
          }),
    );
  }
}
