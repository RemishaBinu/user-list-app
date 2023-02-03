class User{
  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  User({required this.id, 
  required this.email,
  required this.firstName,
  required this.lastName,
  required this.avatar});

  factory User.fromMap(Map<String, dynamic> map){
    return User(
      id: map['id'],
      email: map['email'],
      firstName: map['first_name'],
      lastName: map['last_name'],
      avatar: map['avatar']);
  }

  bool hasMatch(String text){
   return firstName.contains(text) ||
     lastName.contains(text);
  }
}