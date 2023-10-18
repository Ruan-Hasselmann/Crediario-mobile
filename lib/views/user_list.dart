import 'package:appcrediario/components/user_tile.dart';
import 'package:appcrediario/data/dummy_users.dart';
import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    final users = {...DUMMY_USERS};

    return Scaffold(
        appBar: AppBar(
          title: Text('Lista de Clientes'),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.add))
          ],
        ),
        body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (ctx, i) => UserTile(users.values.elementAt(i)),
        ));
  }
}
