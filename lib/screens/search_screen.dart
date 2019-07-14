import 'package:flutter/material.dart';
import 'package:goszakaz/screens/loading_screen.dart';
import 'package:goszakaz/screens/membrs_list_screen.dart';
import 'package:goszakaz/widgets/search_field.dart';

class SearchScreen extends StatefulWidget {
  static final String id = '/search';

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xFF00B2FF), Color(0xFF00FFFF)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: Padding(
          padding: EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'ЕАС',
                    style: TextStyle(
                      fontSize: 110.0,
                    ),
                  ),
                  Text(
                    'единая аналитическая система',
                    style: TextStyle(fontSize: 11.0),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  SearchField(
                    hintText: 'ИНН, ОГРН, наименование, номер гос.контракта',
                    icon: Icons.search,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
