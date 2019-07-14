import 'package:flutter/material.dart';
import 'package:goszakaz/screens/membrs_list_screen.dart';
import 'package:goszakaz/services/companies.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:goszakaz/services/map_parser.dart';

class LoadingScreen extends StatefulWidget {
  static final String id = '/LoadingScreen';
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getCompaniesData() async {
    var delay = await Future.delayed(
      Duration(
        seconds: 2,
      ),
    );

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return MembersListScreen(
            //currentList: MapParser(list: list).getCompanyList(),
            );
      }),
    );
  }

  @override
  void initState() {
    getCompaniesData(); //todo enable this
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF00B2FF), Color(0xFF00FFFF)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: SpinKitDoubleBounce(
            color: Colors.white,
            size: 100.0,
          ),
        ),
      ),
    );
  }
}
