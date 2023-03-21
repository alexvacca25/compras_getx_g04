import 'package:compras_getx/domain/controller/gestionarticulo.dart';
import 'package:compras_getx/ui/app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(ComprasController());
  runApp(const App());
}
