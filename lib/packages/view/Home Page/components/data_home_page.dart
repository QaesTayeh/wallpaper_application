part of '../../../../app_import/app_import.dart';

class DataHomePage extends StatelessWidget {
  static const String routeName = 'DataHomePage';
  const DataHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    try {
      return FutureBuilder<List<Photos?>?>(
          future: ApiContraller().getWallpapersHomePage(context),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const PageLoading();
            }
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData) {
                List<Photos?> devicesData = snapshot.data as List<Photos?>;

                return HomePage(data: devicesData);
              } else {
                return const ErrorText(titleError: AppStrings.errorNoData);
              }
            } else {
              return const ErrorText(titleError: AppStrings.errorFetchData);
            }
          });
    } catch (error) {
      return const PageLoading();
    }
  }
}
