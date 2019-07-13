import 'package:flutter/material.dart';

class BottomIcon extends StatelessWidget {
  final IconData icon;

  BottomIcon({this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(24.0, 12.0, 24.0, 24.0),
          child: Icon(
            icon,
            color: Colors.white,
            size: 45.0,
          ),
        ),
      ),
    );
  }
}
