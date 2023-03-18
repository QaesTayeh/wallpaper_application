part of '../app_import/app_import.dart';

int successstatusCode = 200;
int timOut = 60;

class ApiComponents {
//*--------------------< http Response >---------------------
  httpResponse(String url) async {
    http.Response response = await http.get(Uri.parse(url), headers: {
      AppStrings.authorization: AppStrings.authorizationCode,
    }).timeout(Duration(seconds: timOut));
    return response;
  }
}
