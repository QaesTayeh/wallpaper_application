part of '../../app_import/app_import.dart';

class WallpaperSearchModel extends ChangeNotifier {
  ApiComponents api = ApiComponents();
  List<Wallpaper> _wallpapers = [];

  List<Wallpaper> get wallpapers => _wallpapers;

  Future<void> searchWallpapers(String query,
      {int page = 1, int perPage = 30}) async {
    http.Response response = await api.httpResponse(
        '${Api.baseApi}$query${Api.searchPage1}$page${Api.searchPage2}$perPage');
    final data = jsonDecode(response.body);
    final wallpapers = List<Wallpaper>.from(data[AppStrings.photos].map(
        (data) => Wallpaper(
            id: data[AppStrings.id],
            photographer: data[AppStrings.photographer],
            photographerUrl: data[AppStrings.photographerUrl],
            width: data[AppStrings.width],
            height: data[AppStrings.height],
            url: data[AppStrings.src][AppStrings.medium])));
    _wallpapers = wallpapers;
    notifyListeners();
  }
}
