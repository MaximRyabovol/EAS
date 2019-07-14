import 'package:flutter/material.dart';
import 'screens/membrs_list_screen.dart';
import 'screens/authorization_screen.dart';
import 'screens/membrs_list_screen.dart';
import 'screens/search_screen.dart';
import 'screens/loading_screen.dart';
import 'screens/alphabet_sorting_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      initialRoute: AuthorizationScreen.id,
      routes: {
        MembersListScreen.id: (context) => MembersListScreen(),
        AuthorizationScreen.id: (context) => AuthorizationScreen(),
        SearchScreen.id: (context) => SearchScreen(),
        LoadingScreen.id: (context) => LoadingScreen(),
        AlphabetSortingScreen.id: (context) => AlphabetSortingScreen(),
      },
    );
  }
}
