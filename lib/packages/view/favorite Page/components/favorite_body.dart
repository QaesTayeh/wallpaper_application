part of '../../../../app_import/app_import.dart';

class FavoritePage extends StatefulWidget {
  static const String routeName = 'FavoritePage';
  const FavoritePage({Key? key, required List<ModelFavoriteDB> data})
      : _data = data,
        super(key: key);

  final List<ModelFavoriteDB> _data;

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return customGridView(context, widget._data, true);
  }
}
