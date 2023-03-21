import 'package:compras_getx/ui/pages/carrito/facturar.dart';
import 'package:compras_getx/ui/pages/carrito/list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Manejo de Estado",
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const ListaArticulo(),
      routes: {
        "/lista": (context) => const ListaArticulo(),
        "/facturar": (context) => const Facturar()
      },
    );
  }
}
