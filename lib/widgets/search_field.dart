import 'package:flutter/material.dart';
import 'package:goszakaz/screens/membrs_list_screen.dart';
import 'package:goszakaz/screens/loading_screen.dart';
import 'package:goszakaz/widgets/search_field.dart';
import 'package:goszakaz/services/net_working.dart';

class SearchField extends StatelessWidget {
  final String hintText;
  final IconData icon;

  SearchField({
    this.hintText,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (value) {
        Navigator.pushNamed(
            context, //LoadingScreen.loadingScreenId); //todo enable it!!!
            MembersListScreen.id);
      },
      onEditingComplete: () {
        Navigator.pushNamed(
            context, //LoadingScreen.loadingScreenId); //todo enable it!!!
            MembersListScreen.id);
      },
      keyboardType: TextInputType.text,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        suffixIcon: Icon(
          icon,
          color: Colors.lightBlueAccent,
        ),
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 12.0),
        contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
      ),
    );
  }
}
