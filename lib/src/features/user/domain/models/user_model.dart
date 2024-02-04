class UserModel {
  final String name;
  final String lastName;
  final String id;
  final String documentType;
  final int age;
  final String password;

  UserModel({
    required this.name,
    required this.lastName,
    required this.id,
    required this.documentType,
    required this.age,
    required this.password,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      lastName: json['last_name'],
      id: json['id'],
      documentType: json['document_type'],
      age: json['age'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'last_name': lastName,
      'id': id,
      'document_type': documentType,
      'age': age,
      'password': password,
    };
  }

  String get fullName => '$name $lastName';
}
