import 'dart:convert';

LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
    LoginResponse({
        this.ok,
        this.uid,
        this.nombre,
        this.token,
    });

    bool ok;
    String uid;
    String nombre;
    String token;

    factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        ok: json["ok"],
        uid: json["uid"],
        nombre: json["nombre"],
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "ok": ok,
        "uid": uid,
        "nombre": nombre,
        "token": token,
    };
}
