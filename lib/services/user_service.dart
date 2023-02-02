import 'package:http/http.dart';
import 'package:user_app/abstractions/iuser_service.dart';
import 'package:user_app/models/UserListData.dart';
import 'package:user_app/services/base_service.dart';

class UserService extends BaseService implements IUserService{
  @override
  Future<UserListData?> getUserData(int page) async {
    var queryParams = {"page": "$page"};
    Uri uri = getApiUri('users', queryParams: queryParams);
    print(uri);
    Response response = await client.get(uri);
    if (!isSuccess(response)) {
      return null;
    }
    
    return UserListData.fromMap(
      getMap(response)
    );
  }

}