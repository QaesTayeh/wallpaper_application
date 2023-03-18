part of '../../app_import/app_import.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required String title})
      : _title = title,
        super(key: key);

  final String _title;

  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text(_title), centerTitle: true);
  }
}
