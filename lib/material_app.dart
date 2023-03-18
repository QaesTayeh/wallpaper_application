part of './app_import/app_import.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => WallpaperSearchModel()),
        ],
        child: ScreenUtilInit(
            designSize: const Size(360, 896),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (context, child) => MaterialApp(
                builder: (BuildContext context, Widget? child) {
                  ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
                    bool inDebug = false;
                    assert(() {
                      inDebug = true;
                      return true;
                    }());
                    if (inDebug) {
                      return ErrorWidget(errorDetails.exception);
                    }
                    return Container(
                        alignment: Alignment.center,
                        child: Text('Error\n${errorDetails.exception}',
                            style: TextStyle(
                                color: AppColors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 20))); // Your custom error widget
                  };
                  return child!;
                },
                debugShowCheckedModeBanner: false,
                title: AppStrings.wallpaperApp,
                theme: CustomTheme.lightTheme(context),
                initialRoute: AppStrings.bottomNavigationBarPage,
                routes: AppRoutes.routes)));
  }
}
