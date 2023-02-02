import 'package:flutter/cupertino.dart';
import 'package:user_app/abstractions/iuser_service.dart';
import 'package:user_app/models/UserListData.dart';
import 'package:user_app/models/user.dart';

class UserDataProvider extends ChangeNotifier{
  int page = 0;
  int totalPages = 1;
  List<User> users = [];
  String search = "";
  final IUserService userService;
  UserDataProvider({required this.userService});

  onNext() async{
    if(page >= totalPages){
      return;
    }

    UserListData? userListData = await userService.getUserData(page + 1);
    if(userListData == null || userListData.data.isEmpty){
      return;
    }

    page = userListData.page;
    totalPages = userListData.totalPages;
    users.addAll(userListData.data);
    notifyListeners();
  }

  onSearch(String text){
    search = text;
    notifyListeners();
  }

  List<User> getUsers(){
    if(users.isEmpty) {
      return [];
    }
    if(search.isEmpty){
      return users;
    }

    return users
      .where((user) => user.hasMatch(search))
      .toList();
  }

  bool hasMore() {
    return page < totalPages;
  }
  

}