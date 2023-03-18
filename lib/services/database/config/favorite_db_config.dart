part of '../../../app_import/app_import.dart';

class CreateFavoriteDB {
  static Future<Database> get init async {
    Directory favoriteDirectory = await dir.getApplicationDocumentsDirectory();

    String pathFavoriteDB = path.join(favoriteDirectory.path, 'Favorite.db');

    return openDatabase(pathFavoriteDB, version: 1,
        onCreate: (db, version) async {
      await db.execute(
        'CREATE TABLE ${TableFavorite.tableName} ('
        '${TableFavorite.colId} INT PRIMARY KEY, '
        '${TableFavorite.colImageUrl} Text '
        ')',
      );
    });
  }
}
