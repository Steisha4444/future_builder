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

  Future<List<User>> fetchData() => UsersApi.getUsers();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // body: isLoading ? Center(child: CircularProgressIndicator(color: Colors.deepPurple,))
      // : ListView(
      //   children:
      //       List.generate(users.length, (index) => UserCard(users[index])),
      // ),
      body: FutureBuilder(
        future: fetchData(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return const Center(
                child: CircularProgressIndicator(
                  
                  color: Colors.deepPurple,
                ),
              );
            case ConnectionState.done:
            final users = snapshot.data as List<User>;
              return ListView(
                children: List.generate(
                  users.length,
                  (index) => UserCard(users[index]),
                ),
              );
            default:
              return Container();
          }
        },
      ),
    );
  }
}
