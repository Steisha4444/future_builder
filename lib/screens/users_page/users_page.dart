import 'package:data_fetch_example/api/users_api.dart';
import 'package:data_fetch_example/models/user.dart';
import 'package:data_fetch_example/widgets/user_card.dart';
import 'package:flutter/material.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  List<User> users = [];
  bool isLoading = true;

  Future<void> fetchData() async {
    isLoading = true;
    setState(() {});
    users = await UsersApi.getUsers();
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: isLoading ? Center(child: CircularProgressIndicator(color: Colors.deepPurple,))
      : ListView(
        children:
            List.generate(users.length, (index) => UserCard(users[index])),
      ),
    );
  }
}
