part of '../../app_import/app_import.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
//*-----------------------------------------------------------------------------
    BottomNavigationBarPage.routeName: (context) =>
        const BottomNavigationBarPage(),
//*-----------------------------------------------------------------------------
    DetailsPage.routeName: (context) => const DetailsPage(data: [], index: 0),
//*-----------------------------------------------------------------------------
    DataHomePage.routeName: (context) => const DataHomePage(),
  };
}
