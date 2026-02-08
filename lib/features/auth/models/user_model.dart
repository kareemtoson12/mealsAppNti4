// Karim Toson || kareemtoson1@gmail.com || Sat Feb 07 2026 18:36:25

class UserModel {
  final String email;
  final String name;
  final String password;
  final List fev;

  UserModel({
    required this.email,
    required this.name,
    required this.password,
    required this.fev,
  });

  //to json
  Map<String, dynamic> toJoson() {
    return {'email': email, 'name': name, 'password': password, 'fev': fev};
  }
  //from json

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      email: json['email'] ,
      fev: json['fev'],
      password: json['password'],
      name: json['name'],
    );
  }
}
