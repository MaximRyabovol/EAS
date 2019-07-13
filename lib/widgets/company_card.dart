import 'package:flutter/material.dart';

class CompanyCard extends StatelessWidget {
  final String companyName;
  final String adress;
  final String founder;
  final String specialization;
  final String inn;
  final String ogrn;
  final String okpo;
  final double rating;

  CompanyCard({
    this.companyName,
    this.adress,
    this.founder,
    this.specialization,
    this.inn,
    this.ogrn,
    this.okpo,
    this.rating,
  });

  MaterialColor getColor() {
    if (rating < 3.5) {
      return Colors.red;
    } else {
      if (rating > 3.5 && rating < 8) {
        return Colors.orange;
      } else {
        return Colors.green;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Flexible(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 24.0),
              child: Row(
                children: <Widget>[
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          companyName,
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          adress,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          'Учредитель - $founder',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          specialization,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          'ИНН $inn',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          'ОГРН $ogrn',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          'ОКПО $okpo',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: getColor(),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        rating.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 38.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
