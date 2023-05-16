class UserModel {
  String name;
  String email;
  int age;
  String imageUrl;

  UserModel({
    required this.name,
    required this.email,
    required this.age,
    required this.imageUrl,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      email: json['email'],
      age: json['age'],
      imageUrl: json['imageUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['age'] = age;
    data['imageUrl'] = imageUrl;
    return data;
  }
}
