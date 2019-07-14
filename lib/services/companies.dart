import 'package:goszakaz/services/net_working.dart';

const mainUrl = 'http://100.124.67.137:8000/entity/?format=json';

class CompaniesModel {
  Future<dynamic> getCompanyModel() async {
    NetWorkingHelper netWorkingHelper = NetWorkingHelper(mainUrl);
    var companyData = netWorkingHelper.getData();
    return companyData;
  }
}
