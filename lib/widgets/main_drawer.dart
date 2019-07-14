import 'package:flutter/material.dart';
import 'package:goszakaz/constants.dart';
import 'package:goszakaz/widgets/driwer_item.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: kThemeGradient,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 24.0),
                child: Container(
                  width: 200.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          'http://calendie.ru/media/cache/42/8b/428b85c8627bd902d4911ccd7d394e4b.jpg'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 12.0,
                  bottom: 3.0,
                ),
                child: Text(
                  'Michail653',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 50.0,
                ),
                child: Text(
                  'гость',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  DrawerItem(title: 'Купить подписку'),
                  DrawerItem(title: 'Настройки'),
                  DrawerItem(title: 'Техподдержка'),
                  DrawerItem(title: 'Выйти'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
