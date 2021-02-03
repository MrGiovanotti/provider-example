import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/providers/users_provider.dart';
import 'package:provider_example/utils/routes_utils.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UsersProvider usersProvider = Provider.of<UsersProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
      ),
      body: buildListView(usersProvider),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, RoutesUtils.addUserRoute);
        },
        child: Icon(Icons.person_add),
      ),
    );
  }

  Widget buildListView(UsersProvider usersProvider) {
    if (usersProvider.users.length == 0) {
      return Center(
        child: Text('There is no data'),
      );
    } else {
      return ListView.builder(
        itemCount: usersProvider.users.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.person),
            title: Text(usersProvider.users[index].name),
          );
        },
      );
    }
  }
}
