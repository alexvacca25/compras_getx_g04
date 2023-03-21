class Articulo {
  late String foto;
  late String detalle;
  late String codigo;
  late int existencias;
  late bool estado;

  Articulo(
      {required this.codigo,
      required this.detalle,
      required this.estado,
      required this.existencias,
      required this.foto});

  factory Articulo.crear(Map<String, dynamic> jsonMap) {
    return Articulo(
        codigo: jsonMap['codigo'],
        detalle: jsonMap['detalle'],
        estado: jsonMap['estado'],
        existencias: jsonMap['existencias'],
        foto: jsonMap['foto']);
  }
}

var art = {
  "codigo": "IP14PRO",
  "detalle":
      "Celular iPhone 14 Pro 128GB e-SIM 6GB RAM A16Bionic Cámara 48MP Morado",
  "foto": "https://i.linio.com/p/91c421512ba915b18025430ded0f9609-product.jpg",
  "estado": true,
  "existencias": 24
};
var art1 = {
  "codigo": "IP14PRO",
  "detalle":
      "Celular iPhone 14 Pro 128GB e-SIM 6GB RAM A16Bionic Cámara 48MP Morado",
  "foto": "https://i.linio.com/p/91c421512ba915b18025430ded0f9609-product.jpg",
  "estado": true,
  "existencias": 8
};
var art2 = {
  "codigo": "IP14PRO",
  "detalle":
      "Celular iPhone 14 Pro 128GB e-SIM 6GB RAM A16Bionic Cámara 48MP Morado",
  "foto": "https://i.linio.com/p/91c421512ba915b18025430ded0f9609-product.jpg",
  "estado": false,
  "existencias": 12
};

List<Articulo> listaArticulo = [
  Articulo.crear(art),
  Articulo.crear(art1),
  Articulo.crear(art2)
];

class Cliente {
  late String nombre;
  late String codigo;
}

class Factura {
  late String numero;
  late DateTime fecha;
  late Cliente cliente;
  late List<Articulo> articulos;
}
