import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String title;

  DrawerItem({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Divider(
              endIndent: 20.0,
              indent: 20.0,
              color: Colors.blue,
              height: 12.0,
            )
          ],
        ),
      ),
    );
  }
}
