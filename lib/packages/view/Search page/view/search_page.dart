part of '../../../../app_import/app_import.dart';

class SearchPage extends StatefulWidget {
  static const String routeName = 'SearchPage';
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
//*---------------------------------< AppBar >----------------------------------
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60.0),
            child: CustomAppBar(title: AppStrings.searchPage)),
//*----------------------------------< Body >-----------------------------------
        body: SearchBody());
  }
}
