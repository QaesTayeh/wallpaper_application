part of '../../../../app_import/app_import.dart';

class SearchBody extends StatefulWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  State<SearchBody> createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
//*-------------------------------< Search TextField >--------------------------
      Center(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Row(children: [
                        Expanded(
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.w),
                                child: TextField(
                                    onSubmitted: (value) {
                                      context
                                          .read<WallpaperSearchModel>()
                                          .searchWallpapers(_controller.text);
                                    },
                                    controller: _controller,
                                    decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        hintText:
                                            AppStrings.searchForWallpapers)))),
//*-------------------------------< Search Icon >-------------------------------
                        Container(
                            decoration: BoxDecoration(
                                color: AppColors.primary,
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: IconButton(
                                icon:
                                    Icon(Icons.search, color: AppColors.white),
                                onPressed: () => _controller))
                      ]))))),
//*-------------------------------< Search Body >-------------------------------
      Expanded(child:
          Consumer<WallpaperSearchModel>(builder: (context, model, child) {
        if (model.wallpapers.isEmpty) {
          return const Center(child: Text(AppStrings.noWallpapersFound));
        } else {
          return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                  crossAxisCount: 2,
                  children: model.wallpapers
                      .map((wallpaper) => ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: CachedNetworkImage(
                                imageUrl: wallpaper.url, fit: BoxFit.cover),
                          ))
                      .toList()));
        }
      }))
    ]);
  }
}
