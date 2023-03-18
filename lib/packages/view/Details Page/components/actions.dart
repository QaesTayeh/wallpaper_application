part of '../../../../app_import/app_import.dart';

class Actions {
//*------------------------------< Favorite Button >----------------------------
  ModelFavoriteDB getFavorite(data, index) {
    return ModelFavoriteDB(
      id: data.elementAt(index)?.id,
      imageUrl: data.elementAt(index)?.src?.portrait,
    );
  }

  Future<void> onClickWishlist(BuildContext context, data, index) async {
    try {
      ModelFavoriteDB? haveProduct =
          await FavoriteDB.db.getPotosById(id: data.elementAt(index)!.id!);
      if (haveProduct == null) {
        await FavoriteDB.db.insertPhoto(data: getFavorite(data, index));
        // ignore: use_build_context_synchronously
        AppSnackBar.snackBarSuccess(context,
            message: AppStrings.addedToFavorite);
        // ignore: use_build_context_synchronously
        Navigator.pop(context);
      } else {
        // ignore: use_build_context_synchronously
        AppSnackBar.snackBar(context, message: AppStrings.photoInFavorite);
        // ignore: use_build_context_synchronously
        Navigator.pop(context);
      }
    } catch (e) {
      developer.log('${AppStrings.noData}$e');
    }
  }

//*------------------------------< Download Button >----------------------------
  onPressedDownloadButton(BuildContext context, data, index) async {
    String path = data.elementAt(index)?.src?.portrait;
    await GallerySaver.saveImage(path).then((success) {
      Navigator.pop(context);
      if (success != null && success) {
        AppSnackBar.snackBarSuccess(context,
            message: AppStrings.successfullyAdded);
      }
    });
  }
}
