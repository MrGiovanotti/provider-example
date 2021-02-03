import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/providers/users_provider.dart';
import 'package:provider_example/screens/add_user_screen.dart';
import 'package:provider_example/screens/home_screen.dart';
import 'package:provider_example/utils/routes_utils.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => new UsersProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Provider Example',
        initialRoute: RoutesUtils.homeRoute,
        routes: {
          RoutesUtils.homeRoute: (context) => HomeScreen(),
          RoutesUtils.addUserRoute: (context) => AddUserScreen()
        },
      ),
    );
  }
}
