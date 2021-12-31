class UserModel {
  final String id, email;
  final String? displayName, photoUrl;
  UserModel({
    required this.id,
    required this.email,
    this.displayName,
    this.photoUrl,
  });

  factory UserModel.fromJson(Map json) {
    return UserModel(
      id: json['id'] ?? -1,
      email: json['email'] ?? -1,
      displayName: json['displayName'],
      photoUrl: json['photoUrl'],
    );
  }
  Map toJson() {
    return {
      'id': id,
      'email': email,
      'displayName': displayName,
      'photoUrl': photoUrl,
    };
  }
}
