import 'dart:convert';

Usuario usuarioFromJson(String str) => Usuario.fromJson(json.decode(str));

String usuarioToJson(Usuario data) => json.encode(data.toJson());

class Usuario {
    Usuario({
        this.uid,
        this.nombre
    });

    String uid;
    String nombre;

    factory Usuario.fromJson(Map<String, dynamic> json) => Usuario(
        uid: json["uid"],
        nombre: json["nombre"],
    );

    Map<String, dynamic> toJson() => {
        "uid": uid,
        "nombre": nombre,
    };
}
