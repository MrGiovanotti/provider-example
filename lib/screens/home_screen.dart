import 'package:flutter/material.dart';
import 'package:provider_example/models/user.dart';
import 'package:provider_example/utils/routes_utils.dart';

class HomeScreen extends StatelessWidget {
  final List<User> users = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Example'),
      ),
      body: buildListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, RoutesUtils.addUserRoute);
        },
        child: Icon(Icons.person_add),
      ),
    );
  }

  Widget buildListView() {
    if (users.length == 0) {
      return Center(
        child: Text('There is no data'),
      );
    } else {
      return ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Giovanny Granda'),
          )
        ],
      );
    }
  }
}
