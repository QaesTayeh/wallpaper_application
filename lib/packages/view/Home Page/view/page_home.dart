part of '../../../../app_import/app_import.dart';

class HomePage extends StatefulWidget {
  static const String routeName = 'HomePage';
  const HomePage({Key? key, required List<Photos?> data})
      : _data = data,
        super(key: key);

  final List<Photos?> _data;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//*------------------------------< AppBar >-------------------------------------
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(60.0),
            child: CustomAppBar(title: AppStrings.homeTitle)),
//*-------------------------------< Body >--------------------------------------
        body: Container(
            margin: const EdgeInsets.all(12),
            child: customGridView(context, widget._data, false)));
  }
}
