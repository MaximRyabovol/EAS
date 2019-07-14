import 'package:flutter/material.dart';
import 'package:goszakaz/constants.dart';
import 'package:goszakaz/widgets/driwer_item.dart';

class AlphabetSortingScreen extends StatelessWidget {
  static final String id = '/alphabetSortingScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: kThemeGradient,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(24.0),
                child: Text(
                  'Сортровать:',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                  ),
                ),
              ),
              DrawerItem(title: 'По возрастанию рейтинга'),
              DrawerItem(title: 'По убыванию рейтинга'),
              DrawerItem(title: 'По алфавиту (от А до Я)'),
              DrawerItem(title: 'По алфавиту (от Я до А)'),
            ],
          ),
        ),
      ),
    );
  }
}
