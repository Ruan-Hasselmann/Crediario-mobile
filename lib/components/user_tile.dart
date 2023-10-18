import 'package:appcrediario/models/user.dart';
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
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.edit),
              color: Colors.yellow,
            ),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.delete), color: Colors.red)
          ],
        ),
      ),
    );
  }
}
