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
                      companyName:
                          'АО "ТЮМЕНСКОЕ ОБЛАСТНОЕ ДОРОЖНО-ЭКСПЛУАТАЦИОННОЕ ПРЕДПРИЯТИЕ"',
                      adress: 'обл. Тюменская, г. Тюмень, ул. Широтная, д.111',
                      founder:
                          'ДЕПАРТАМЕНТ ИМУЩЕСТВЕННЫХ ОТНОШЕНИЙ ТЮМЕНСКОЙ ОБЛАСТИ',
                      specialization:
                          'Строительство автомобильных дорог и автомагистралей',
                      inn: '7203175930',
                      ogrn: '1067203269726',
                      okpo: '1234567',
                      rating: 8.8,
                    ),
                    CompanyCard(
                      companyName:
                          'ОБЩЕСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ "ДОРОЖНИК 2018"',
                      adress: 'обл. Тюменская, г. Тюмень, ул. Широтная, д.111',
                      founder: 'Гурьянов Алексей Николаевич',
                      specialization:
                          'Производство прочих изделий из недрагоценных металлов, не включенных в другие группировки',
                      inn: '7203437832',
                      ogrn: '1177232036398',
                      okpo: '1234567',
                      rating: 6.9,
                    ),
                    CompanyCard(
                      companyName:
                          'ОБЩЕСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ "АРКАДА"',
                      adress:
                          'г. Москва, пр-д Олонецкий, д.18, кор.1, оф.Э 1 П III ком.5 (РМ7)',
                      founder: 'Абросимова Елена Венальевна',
                      specialization:
                          'Деятельность агентов по оптовой торговле универсальным ассортиментом товаров',
                      inn: '9715306138',
                      ogrn: '1177746951172',
                      okpo: '1234567',
                      rating: 7.1,
                    ),
                    CompanyCard(
                      companyName:
                          'ОБЩЕСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ "ФЕРРУМ"',
                      adress:
                          'обл. Тюменская, г. Тюмень, ул. Дружбы, д.63, кв.2',
                      founder:
                          'Некрасов Николай Николаевичъ, Некрасов Владимир Николаевич',
                      specialization:
                          'Торговля оптовая прочими строительными материалами и изделиями',
                      inn: '7203377421',
                      ogrn: '1167232060291',
                      okpo: '1234567',
                      rating: 9.0,
                    ),
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
