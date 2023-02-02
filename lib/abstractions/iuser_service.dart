import 'package:user_app/models/UserListData.dart';

abstract class IUserService {
  Future<UserListData?> getUserData(int page);
}