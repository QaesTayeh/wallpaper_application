part of '../app_import/app_import.dart';

abstract class HandleApi {
//*------------------< get Wallpapers Home Page >-----------------------------
  Future<List<Photos?>?> getWallpapersHomePage(BuildContext context);
}
