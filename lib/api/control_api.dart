part of '../app_import/app_import.dart';

class ApiContraller extends HandleApi {
  ApiComponents api = ApiComponents();
//!----------------------------------< Home Page >-----------------------------------
  @override
  Future<List<Photos?>?> getWallpapersHomePage(BuildContext context) async {
    try {
      http.Response response = await api.httpResponse(
          '${Api.homePage}${DateTime.now().millisecondsSinceEpoch}');

      List<Photos?> data = List.filled(1, Photos());

      if (response.statusCode == 200) {
        var json = convert.jsonDecode(response.body);
        final photosJson = json[AppStrings.photos];
        data = photosJson
            .map<Photos?>((json) => Photos.fromJson(json: json))
            .toList();
      } else {
        throw Exception(AppStrings.failedToFetchData);
      }
      return data;
    } catch (error) {
      return null;
    }
  }
}
