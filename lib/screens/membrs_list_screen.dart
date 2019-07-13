import 'package:flutter/material.dart';

class MembersListScreen extends StatefulWidget {
  static final String membersListScreenId = '/membersListScreen';
  @override
  _MembersListScreenState createState() => _MembersListScreenState();
}

class _MembersListScreenState extends State<MembersListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: ListView(
        padding: EdgeInsets.all(24.0),
        children: <Widget>[
          Text('Контракт !'),
          Text('Контракт !'),
          Text('Контракт !'),
          Text('Контракт !'),
          Text('Контракт !'),
          Text('Контракт !'),
          Text('Контракт !'),
          Text('Контракт !'),
        ],
      ),
    );
  }
}
