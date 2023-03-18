part of '../../../../app_import/app_import.dart';

class DetailsBody extends StatefulWidget {
  const DetailsBody({Key? key, required List<Photos?> data, required int index})
      : _data = data,
        _index = index,
        super(key: key);

  final List<Photos?> _data;
  final int _index;

  @override
  State<DetailsBody> createState() => _DetailsBodyState();
}

class _DetailsBodyState extends State<DetailsBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
          height: MediaQuery.of(context).size.height,
          child: CachedNetworkImage(
              imageUrl:
                  '${widget._data.elementAt(widget._index)?.src?.portrait}',
              fit: BoxFit.cover)),
      Container(
          color: AppColors.blackCardSocial,
          child: Padding(
              padding: EdgeInsets.only(right: 5.w),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
//*----------------------< favorite Button >----------------------
                ElevatedButton(
                    onPressed: () => Actions()
                        .onClickWishlist(context, widget._data, widget._index),
                    child: const Icon(Icons.favorite_border)),
                5.horizontalSpace,
//*----------------------< download Button >----------------------
                ElevatedButton(
                    onPressed: () => Actions().onPressedDownloadButton(
                        context, widget._data, widget._index),
                    child: const Icon(Icons.download_outlined))
              ])))
    ]);
  }
}
