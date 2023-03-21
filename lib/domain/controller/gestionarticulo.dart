import 'package:compras_getx/domain/models/articulo.dart';
import 'package:get/get.dart';

class ComprasController extends GetxController {
  Rx<List<Articulo>> listaArt = Rx<List<Articulo>>([]);
  Rx<List<Articulo>> listaComp = Rx<List<Articulo>>([]);
  final totalcompra = 0.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    listaArt.value = listaArticulo;
    super.onInit();
  }

  List<Articulo> get listaGral => listaArt.value;
  int get facturar => totalcompra.value;
  List<Articulo> get listaGcompra => listaComp.value;

 
  gestionArt(String op, int i) {
    switch (op) {
      case "+":
        listaComp.value.add(listaArt.value[i]);
        listaComp.refresh();
        (listaArt.value[i].existencias > 0)
            ? listaArt.value[i].existencias--
            : 0;
        totalcompra.value++;
        listaArt.refresh();
        break;
      case "-":
        listaArt.value[i].existencias++;
        totalcompra.value--;
        listaArt.refresh();
        break;
      default:
    }
  }
}
