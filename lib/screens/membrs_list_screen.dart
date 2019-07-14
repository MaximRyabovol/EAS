import 'package:flutter/material.dart';
import 'package:goszakaz/widgets/company_card.dart';
import 'package:goszakaz/widgets/search_field.dart';
import 'package:goszakaz/constants.dart';
import 'package:goszakaz/widgets/bottom_button.dart';
import 'package:goszakaz/widgets/main_drawer.dart';
import 'package:goszakaz/screens/alphabet_sorting_screen.dart';

class MembersListScreen extends StatefulWidget {
  static final String id = '/membersListScreen';
  //final List<CompanyCard> currentList;

  //MembersListScreen({this.currentList});

  @override
  _MembersListScreenState createState() => _MembersListScreenState(
      //currentList: currentList,
      );
}

class _MembersListScreenState extends State<MembersListScreen> {
  //final List<CompanyCard> currentList;

  //_MembersListScreenState({this.currentList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text(
          'ЕАС',
          style: TextStyle(
            fontSize: 38.0,
          ),
        ),
        backgroundColor: Color(0xFF00B2FF),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 12.0),
              child: SearchField(
                hintText: '',
                icon: Icons.clear,
              ),
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 0.0),
                child: ListView(
                  children: <Widget>[
                    CompanyCard(
                      companyName: 'ООО "Рога и Копыта"',
                      adress: 'г. Хабаровск, ул. Тихоокеанская 150',
                      founder: 'Иванов Василий',
                      specialization:
                          'Торговля продуктами питания, жидкими супами и т.д.',
                      inn: '1234567890',
                      ogrn: '1234567890987',
                      okpo: '1234567',
                      rating: 8.7,
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 70.0,
              decoration: kThemeGradient,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  BottomButton(
                    icon: Icons.shopping_cart,
                  ),
                  BottomButton(
                    screenId: AlphabetSortingScreen.id,
                    icon: Icons.sort_by_alpha,
                  ),
                  BottomButton(
                    icon: Icons.sort,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
