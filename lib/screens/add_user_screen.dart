import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/models/user.dart';
import 'package:provider_example/providers/users_provider.dart';

class AddUserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UsersProvider usersProvider = Provider.of<UsersProvider>(context);
    final TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Add User'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                textCapitalization: TextCapitalization.words,
                controller: controller,
              ),
            ),
            RaisedButton(
              onPressed: () {
                User user = User();
                user.name = controller.text;
                usersProvider.addUser = user;
                Navigator.pop(context);
              },
              child: Text('Agregar'),
            ),
          ],
        ),
      ),
    );
  }
}
