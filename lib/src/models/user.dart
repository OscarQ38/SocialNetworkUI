import 'dart:convert';

Usuario usuarioFromJson(String str) => Usuario.fromJson(json.decode(str));

String usuarioToJson(Usuario data) => json.encode(data.toJson());

class Usuario {
  Usuario({
    this.uid,
    this.nombre,
    this.email,
    this.nombreCompleto,
    this.apellidoMaterno,
    this.apellidoPaterno,
    this.password,
  });

  String uid;
  String email;
  String nombre;
  String nombreCompleto;
  String apellidoMaterno;
  String apellidoPaterno;
  String password;

  factory Usuario.fromJson(Map<String, dynamic> json) => Usuario(
      uid: json["uid"],
      nombre: json["nombre"],
      email: json["email"],
      nombreCompleto: json["nombreCompleto"],
      apellidoMaterno: json["apellidoMaterno"],
      apellidoPaterno: json["apellidoPaterno"],
      password: json["password"]);

  Map<String, dynamic> toJson() => {
        "uid": uid,
        "nombre": nombre,
        "email": email,
        "nombreCompleto": nombreCompleto,
        "apellidoMaterno": apellidoMaterno,
        "apellidoPaterno": apellidoPaterno,
        "password": password
      };
}
