import 'package:compras_getx/domain/controller/gestionarticulo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:badges/badges.dart' as badges;

class ListaArticulo extends StatefulWidget {
  const ListaArticulo({super.key});

  @override
  State<ListaArticulo> createState() => _ListaArticuloState();
}

class _ListaArticuloState extends State<ListaArticulo> {
  ComprasController controlc = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Articulos'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: badges.Badge(
                badgeContent: Obx(
                  () => Text(controlc.listaGcompra.length.toString()),
                ),
                child: const Icon(Icons.shopping_cart),
                onTap: () {
                  Get.toNamed("/facturar");
                },
              ),
            ),
          ],
        ),
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemCount: controlc.listaGral.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                controlc.gestionArt("-", index);
                              },
                              child: const Icon(Icons.remove_circle),
                            ),
                            Obx(
                              () => Text(
                                controlc.listaGral[index].existencias
                                    .toString(),
                              ),
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                controlc.gestionArt("+", index);
                              },
                              child: const Icon(Icons.add_circle),
                            ),
                          ],
                        ),
                      ],
                    )),
              );
            }));
  }
}
