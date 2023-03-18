part of '../../../../app_import/app_import.dart';

class DetailsPage extends StatefulWidget {
  static const String routeName = 'DetailsPage';
  const DetailsPage({Key? key, required List<Photos?> data, required int index})
      : _data = data,
        _index = index,
        super(key: key);

  final List<Photos?> _data;
  final int _index;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//*--------------------------------< AppBar >-----------------------------------
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(60.0),
            child: CustomAppBar(title: AppStrings.detailsTitle)),
//*---------------------------------< Body >------------------------------------
        body: DetailsBody(data: widget._data, index: widget._index));
  }
}
