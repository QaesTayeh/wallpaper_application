part of '../../../../app_import/app_import.dart';

class Photos {
  int? id;
  String? url;
  Src? src;

  Photos({this.id, this.url, this.src});

  Photos.fromJson({required Map<String, dynamic> json}) {
    id = json[AppStrings.id];
    url = json[AppStrings.url];
    src = json[AppStrings.src] != null
        ? Src.fromJson(json: json[AppStrings.src])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data[AppStrings.id] = id;
    data[AppStrings.url] = url;
    if (src != null) {
      data[AppStrings.src] = src!.toJson();
    }
    return data;
  }
}

class Src {
  String? portrait;
  String? photographer;
  Src({this.portrait, this.photographer});

  Src.fromJson({required Map<String, dynamic> json}) {
    portrait = json[AppStrings.portrait];
    photographer = json[AppStrings.photographer];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data[AppStrings.portrait] = portrait;
    data[AppStrings.photographer] = photographer;
    return data;
  }
}
