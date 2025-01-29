class UserModel {
  final String id;
  final String title;
  final String content;

  UserModel({
    required this.id,
    required this.title,
    required this.content,
  });

  // Convert a UserModel instance into a map for database insertion
  Map<String, dynamic> toMap() {
    return {
      'Id': id,
      'Title': title,
      'Content': content,
    };
  }

  // Create a UserModel instance from a map (retrieved from database)
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['Id'],
      title: map['Title'],
      content: map['Content'],
    );
  }
}
