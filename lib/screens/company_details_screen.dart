import 'package:flutter/material.dart';

class CompanyDetailScreen extends StatefulWidget {
  static final String id = '/companyDetailScreen';
  @override
  _CompanyDetailScreenState createState() => _CompanyDetailScreenState();
}

class _CompanyDetailScreenState extends State<CompanyDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ЕАС',
          style: TextStyle(
            fontSize: 38.0,
          ),
        ),
        backgroundColor: Color(0xFF00B2FF),
      ),
    );
  }
}
