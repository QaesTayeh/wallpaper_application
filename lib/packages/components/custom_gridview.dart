part of '../../app_import/app_import.dart';

Widget customGridView(BuildContext context, data, bool isFavorite) {
  return MasonryGridView.builder(
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),
      itemCount: data.length,
      itemBuilder: (context, index) {
        return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: InkWell(
                onTap: () => !isFavorite
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsPage(
                                data: data,
                                index: index)) //wallpaperUrls[index]
                        )
                    : () {},
                child: CachedNetworkImage(
                    imageUrl: isFavorite
                        ? '${data.elementAt(index).imageUrl}'
                        : data.elementAt(index)?.src?.portrait,
                    fit: BoxFit.cover)));
      });
}
