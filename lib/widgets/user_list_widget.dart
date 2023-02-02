import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:user_app/models/user.dart';
import 'package:user_app/providers/User_data_provider.dart';
import 'package:user_app/widgets/loadmore.dart';
import 'package:user_app/widgets/user_widget.dart';

class UserListWidget extends StatelessWidget{

  List<Widget> getUsers(List<User> users){
  return users
      .map((user) => UserWidget(user: user))
      .toList();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Consumer<UserDataProvider>(
          builder: (ccontexttxt, value, child) {
            return Column(
                children: getUsers(value.getUsers()), 
              );
          },
        ),
        Consumer<UserDataProvider>(
          builder: (ccontexttxt, value, child) {
            var hasMore = value.hasMore();
            return hasMore ? LoadMore(onPressed: () {
              value.onNext();
            }) : const Text("");
          }
        )
      ],
    );
  }

}