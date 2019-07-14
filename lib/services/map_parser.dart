import 'package:goszakaz/widgets/company_card.dart';

class MapParser {
  final List<dynamic> list;
  final double ratingFirm1 = 8.7;
  final double ratingFirm2 = 6.9;
  final double ratingFirm3 = 3.2;
  final List<double> rating = [8.7, 6.9, 3.2];

  MapParser({this.list});

  List<CompanyCard> getCompanyList() {
    List<CompanyCard> resultList = [];
    for (int i = 0; i < 3; i++) {
      print(list[i]['name_entity']);
      print(list[i]['address'].toString());
      print(list[i]['founders']);
      print(list[i]['status']);
      print(list[i]['inn']);
      print(list[i]['kpp']);
      print(rating[i]);

      /*CompanyCard company = CompanyCard(
        companyName: list[i]['name_entity'], //results[0].name_entity
        adress: list[i]['address'].toString(), //results[0].address
        founder: list[i]['founders'], //results[0].founders
        specialization: list[i]['status'], //results[0].status
        inn: list[i]['inn'], //results[0].inn
        ogrn: list[i]['ogrn'], //results[0].ogrn
        okpo: list[i]['kpp'], //results[0].kpp
        rating: rating[i],
      );*/

      //resultList.add(company);
    }

    return resultList;
  }
}
