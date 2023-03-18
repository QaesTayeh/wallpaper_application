part of '../../app_import/app_import.dart';

class PageLoading extends StatelessWidget {
  const PageLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(child: AppLoading(loading: ChooseLoading.page)));
  }
}
