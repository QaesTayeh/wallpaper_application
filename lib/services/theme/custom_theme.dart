part of '../../app_import/app_import.dart';

class CustomTheme {
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData.light().copyWith(
        colorScheme:
            ThemeData().colorScheme.copyWith(primary: AppColors.primaryDark),
        appBarTheme: AppBarTheme(backgroundColor: AppColors.primaryDark),
        textTheme: Theme.of(context).textTheme.apply(
            bodyColor: AppColors.primary, displayColor: AppColors.primary));
  }
}
