import 'package:data_fetch_example/screens/users_page/users_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
     
        primarySwatch: Colors.purple,
      ),
      home: const UsersPage(),
    );
  }
}