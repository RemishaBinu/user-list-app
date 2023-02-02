import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_app/providers/User_data_provider.dart';
import 'package:user_app/widgets/searchbox.dart';
import 'package:user_app/widgets/user_list_widget.dart';

class UserListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBox(onSearch: (text) {
              Provider.of<UserDataProvider>(context, listen: false)
                .onSearch(text);
            }),
            UserListWidget()
          ],
        ),
      ),
    );
  }

}