import 'package:user_app/models/user.dart';

class UserListData{
  int page;
  int perPage;
  int total;
  int totalPages;
  List<User> data;

  UserListData({
    required this.page,
    required this.perPage,
    required this.total,
    required this.totalPages,
    required this.data
  });

  factory UserListData.fromMap(Map<String, dynamic> map){
    return UserListData(
      page: map['page'],
      perPage: map['per_page'],
      total: map['total'], 
      totalPages: map['total_pages'],
      data: (map['data'] as List<dynamic>)
        .map((e) => User.fromMap(e as Map<String, dynamic>))
        .toList()
      );
  }

}