part of '../../../app_import/app_import.dart';

class FavoriteDB {
//*---------------------------< private Constructor >---------------------------
  FavoriteDB._();
//*----------------------------< created Object DB >----------------------------
  static final FavoriteDB db = FavoriteDB._();
//*-------------------------------< Steup the DB >------------------------------
  static Database? _database;
  Future<Database> get _hasDB async =>
      _database ??= await CreateFavoriteDB.init;

//*----------------------------< add class >----------------------------------
  Future<int> insertPhoto({required ModelFavoriteDB data}) async {
    return _hasDB
        .then((dB) => dB.insert(TableFavorite.tableName, data.toMap()))
        .onError((error, stackTrace) {
      return -1;
    });
  }

//*--------------------------< get Product By ID >------------------------------
  Future<ModelFavoriteDB?> getPotosById({required int id}) async {
    return _hasDB
        .then((db) => db.query(
              TableFavorite.tableName,
              where: '${TableFavorite.colId} = ?',
              whereArgs: [id],
            ).then(
              (listData) => listData.isNotEmpty
                  ? ModelFavoriteDB.fromMap(map: listData.first)
                  : null,
            ))
        .onError((error, stackTrace) {
      return null;
    });
  }

//*-----------------------------< get All Products >----------------------------
  Future<List<ModelFavoriteDB>> get getAllPhotos async {
    return _hasDB
        .then((dB) => dB
            .query(
              TableFavorite.tableName,
            )
            .then((listData) => listData.isNotEmpty
                ? listData
                    .map((cart) => ModelFavoriteDB.fromMap(map: cart))
                    .toList()
                : <ModelFavoriteDB>[]))
        .onError((error, stackTrace) {
      return <ModelFavoriteDB>[];
    });
  }
}
