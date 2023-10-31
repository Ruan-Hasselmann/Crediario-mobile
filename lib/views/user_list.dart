import 'package:appcrediario/components/user_tile.dart';
import 'package:appcrediario/models/user.dart';
import 'package:appcrediario/provider/users.dart';
import 'package:appcrediario/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
        appBar: AppBar(
          title: Text('Lista de Clientes'),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoutes.USER_FORM);
                },
                icon: Icon(Icons.add))
          ],
        ),
        body: ListView.builder(
          itemCount: users.count,
          itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
        ));
  }
}
