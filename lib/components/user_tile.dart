import 'package:appcrediario/models/user.dart';
import 'package:appcrediario/routes/app_routes.dart';
import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  final User user;

  const UserTile(this.user, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final avatar = user.id == null || user.id.isEmpty
        ? CircleAvatar(backgroundImage: NetworkImage(user.id))
        : const CircleAvatar(child: Icon(Icons.person));

    return ListTile(
      leading: avatar,
      title: Text(user.nome),
      subtitle: Text(user.id),
      trailing: Container(
        width: 145,
        child: Row(
          children: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.USER_FORM,
                  arguments: user,
                );
              },
              icon: Icon(Icons.edit),
              color: Colors.yellow,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.attach_money),
                color: Colors.green),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_shopping_cart),
                color: Colors.cyan)
          ],
        ),
      ),
    );
  }
}
