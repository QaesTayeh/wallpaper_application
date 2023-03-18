part of '../../app_import/app_import.dart';

class AppLoading extends StatelessWidget {
  const AppLoading({Key? key, ChooseLoading? loading, double? size})
      : _loading = loading,
        _size = size,
        super(key: key);

  final ChooseLoading? _loading;
  final double? _size;

  @override
  Widget build(BuildContext context) {
    switch (_loading ?? ChooseLoading.imageApp) {
//*-----------------------< imageApp >-----------------------
      case ChooseLoading.imageApp:
        return SpinKitFadingCircle(
            size: _spinKitSize, color: _spinKitTheme(context));
//*------------------------< page >--------------------------
      case ChooseLoading.page:
        return SpinKitFadingCircle(
            size: _spinKitSize, color: _spinKitTheme(context));
//*-----------------------< profile >------------------------
      case ChooseLoading.profile:
        return SpinKitPulse(size: _spinKitSize, color: _spinKitTheme(context));
//*-----------------------< webView >------------------------
      case ChooseLoading.webView:
        return SpinKitPouringHourGlassRefined(
            size: _spinKitSize, color: _spinKitTheme(context));
    }
  }

//*---------------------< size loading >----------------------
  double get _spinKitSize => (_size ?? 64 / 1.4).w;

//*---------------------< color theme >-----------------------
  Color _spinKitTheme(BuildContext context) => AppColors.primary;
}
