import 'package:compras_getx/domain/controller/gestionarticulo.dart';
import 'package:compras_getx/domain/models/articulo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Tarjeta extends StatelessWidget {
  Articulo llenarArt;

  Tarjeta({super.key, required this.llenarArt});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(8.0),
              child: Image.network(
                llenarArt.foto,
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.5,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Textos(llenarArt: llenarArt),
          ),
        ],
      ),
    );
  }
}

class Textos extends StatelessWidget {
  const Textos({
    super.key,
    required this.llenarArt,
  });

  final Articulo llenarArt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            llenarArt.detalle,
            maxLines: 2,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 10.0,
                overflow: TextOverflow.ellipsis),
          ),
          Text(
            llenarArt.codigo,
            style: const TextStyle(fontSize: 10.0),
          ),
          Row(children: [
            Text(
              llenarArt.existencias.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 8.0,
              ),
            ),
            OutlinedButton(onPressed: () {}, child: const Text("Comprar"))
          ])
        ],
      ),
    );
  }
}

class Tarjeta2 extends StatelessWidget {
  Articulo llenadoArt;
  int item;
  Tarjeta2({super.key, required this.llenadoArt, required this.item});

  @override
  Widget build(BuildContext context) {
    ComprasController controlc = Get.find();
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.arrow_drop_down_circle),
            title: Text(
              'Existencias: ${llenadoArt.existencias}',
            ),
            subtitle: Text(
              'Secondary Text',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              llenadoArt.detalle,
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              OutlinedButton(
                onPressed: () {
                  controlc.gestionArt("+", item);
                  // Perform some action
                },
                child: const Text('Agregar'),
              ),
              OutlinedButton(
                onPressed: () {
                  // Perform some action
                  controlc.gestionArt("-", item);
                  print("entro");
                },
                child: const Text('Quitar'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
