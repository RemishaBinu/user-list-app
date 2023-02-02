import 'package:flutter/cupertino.dart';
import 'package:user_app/models/user.dart';

class UserWidget extends StatelessWidget{
  User user;

  UserWidget({required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(child: Image.network(user.avatar)),
          Container(
            child: Column(
              children: [
                Text("${user.firstName} ${user.lastName}"),
                Text(user.email)
              ],
            ),
          )
        ],
      ),
    );
  }

}