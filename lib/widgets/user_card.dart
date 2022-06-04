import 'package:data_fetch_example/models/user.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final User user;

  const UserCard(this.user, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        Text(user.id.toString()),
        SizedBox(height: 16),
        Text(user.name),
        SizedBox(height: 16),
        if (user.email != null) ...[
          Text(user.email!),
          SizedBox(height: 16),
        ],
        Text(user.address.toString()),
        SizedBox(height: 16),
      ]),
    );
  }
}
