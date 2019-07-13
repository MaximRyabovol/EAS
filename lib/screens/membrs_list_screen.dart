import 'package:flutter/material.dart';
import 'package:goszakaz/widgets/company_card.dart';
import 'package:goszakaz/widgets/search_field.dart';

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
        title: Text(
          'ЕАС',
          style: TextStyle(
            fontSize: 38.0,
          ),
        ),
        backgroundColor: Color(0xFF00B2FF),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            children: <Widget>[
              SearchField(
                hintText: '',
                icon: Icons.clear,
              ),
              SizedBox(
                height: 24.0,
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
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
                      ),
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
                      ),
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
                      ),
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
                      ),
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
                      ),
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
                      ),
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
                      ),
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
                      ),
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
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
