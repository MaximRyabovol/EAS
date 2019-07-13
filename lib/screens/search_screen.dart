import 'package:flutter/material.dart';
import 'package:goszakaz/screens/membrs_list_screen.dart';

class SearchScreen extends StatefulWidget {
  static final String searchScreenId = '/search';

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
                  TextField(
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      //Do something with the user input.
                      //todo make request
                    },
                    decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'ИНН, ОГРН, наименование, номер гос.контракта',
                      hintStyle: TextStyle(fontSize: 12.0),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.lightBlueAccent, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.lightBlueAccent, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                    ),
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
