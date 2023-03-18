part of '../../../../app_import/app_import.dart';

class DataFavorite extends StatefulWidget {
  static const String routeName = 'DataFavorite';
  const DataFavorite({Key? key}) : super(key: key);

  @override
  State<DataFavorite> createState() => _DataFavoriteState();
}

class _DataFavoriteState extends State<DataFavorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//*------------------------------< AppBar >-------------------------------------
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(60.0),
            child: CustomAppBar(title: AppStrings.favoriteTitle)),
//*-------------------------------< Body >--------------------------------------
        body: FutureBuilder<List<ModelFavoriteDB>>(
            future: FavoriteDB.db.getAllPhotos,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const PageLoading();
              }
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  List<ModelFavoriteDB> dataList = snapshot.data ?? [];
                  if (dataList.isNotEmpty) {
                    return Container(
                        margin: const EdgeInsets.all(12),
                        height: MediaQuery.of(context).size.height,
                        child: FavoritePage(data: dataList));
                  } else {
                    return const Center(child: Text(AppStrings.emptyFavorite));
                  }
                } else {
                  return const ErrorText(titleError: AppStrings.errorNoData);
                }
              } else {
                return const ErrorText(titleError: AppStrings.errorFetchData);
              }
            }));
  }
}
