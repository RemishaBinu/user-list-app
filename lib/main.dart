import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_app/abstractions/iuser_service.dart';
import 'package:user_app/providers/User_data_provider.dart';
import 'package:user_app/services/user_service.dart';
import 'package:user_app/widgets/user_list_page.dart';

void main() {
  IUserService userService = UserService();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UserDataProvider(userService: userService)
            ..onNext(),
            lazy: false,
          )
      ],
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User list app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UserListPage()
    );
  }
}

