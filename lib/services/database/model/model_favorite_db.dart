part of '../../../app_import/app_import.dart';

class ModelFavoriteDB {
  int? id;
  String? imageUrl;

  ModelFavoriteDB({
    this.id,
    this.imageUrl,
  });

  ModelFavoriteDB.fromMap({required Map<String, dynamic> map})
      : assert(map.isNotEmpty),
        id = map[TableFavorite.colId],
        imageUrl = map[TableFavorite.colImageUrl];

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data[TableFavorite.colId] = id;
    data[TableFavorite.colImageUrl] = imageUrl;
    return data;
  }
}
