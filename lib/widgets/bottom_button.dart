import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final IconData icon;
  final String screenId;

  BottomButton({this.icon, this.screenId});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, screenId);
      },
      child: Container(
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
      ),
    );
  }
}
