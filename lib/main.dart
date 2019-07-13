import 'package:flutter/material.dart';
import 'screens/membrs_list_screen.dart';
import 'screens/authorization_screen.dart';
import 'screens/membrs_list_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      initialRoute: AuthorizationScreen.authorizationScreenId,
      routes: {
        MembersListScreen.membersListScreenId: (context) => MembersListScreen(),
        AuthorizationScreen.authorizationScreenId: (context) =>
            AuthorizationScreen()
      },
    );
  }
}
