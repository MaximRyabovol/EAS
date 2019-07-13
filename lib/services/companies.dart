import 'package:goszakaz/services/net_working.dart';

const individualId = '???';
const mainUrl = '???';

class CompaniesModel {
  Future<dynamic> getCompanyList() async {
    NetWorkingHelper netWorkingHelper = NetWorkingHelper(url: mainUrl);
    var netData = await netWorkingHelper.getData();
    return netData;
  }
}
