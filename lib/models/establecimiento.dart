class Establecimiento {
  final int id;
  final String nombre;
  final String nit;
  final String direccion;
  final String telefono;
  final String? logo; // <- logo ahora es nullable
  final String estado;

  Establecimiento({
    required this.id,
    required this.nombre,
    required this.nit,
    required this.direccion,
    required this.telefono,
    this.logo, // <- también aquí
    required this.estado,
  });

  factory Establecimiento.fromJson(Map<String, dynamic> json) {
    return Establecimiento(
      id: json['id'],
      nombre: json['nombre'],
      nit: json['nit'],
      direccion: json['direccion'],
      telefono: json['telefono'],
      logo: json['logo'], // <- esto puede ser null
      estado: json['estado'],
    );
  }

  Map<String, String> toJson({String? logoBase64}) {
    return {
      'nombre': nombre,
      'nit': nit,
      'direccion': direccion,
      'telefono': telefono,
      if (logoBase64 != null) 'logo': logoBase64,
    };
  }
}
