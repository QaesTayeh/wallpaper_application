part of '../../app_import/app_import.dart';

class BottomNavigationBarPage extends StatefulWidget {
  static const String routeName = 'BottomNavigationBarPage';
  const BottomNavigationBarPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  int _currentIndex = 0;

  final List _children = const [DataHomePage(), SearchPage(), DataFavorite()];

  void onTab(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            selectedIconTheme: IconThemeData(color: AppColors.primary),
            onTap: onTab,
            currentIndex: _currentIndex,
            items: const [
//*---------------------------------< Home >------------------------------------
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: AppStrings.home),
//*-------------------------------< Search >------------------------------------
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: AppStrings.search),
//*------------------------------< wishlist >-----------------------------------
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: AppStrings.favorite)
            ]));
  }
}
