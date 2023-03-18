import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:provider/provider.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import '../packages/view/Search page/model/model_search_page.dart';
import '../services/loading/enum_loading.dart';
import 'dart:convert' as convert;
import 'dart:developer' as developer;
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:io';
import 'package:sqflite/sqflite.dart';
// ignore: duplicate_import
import 'dart:developer' as developer;
// ignore: depend_on_referenced_packages
import 'package:path_provider/path_provider.dart' as dir;
// ignore: depend_on_referenced_packages
import 'package:path/path.dart' as path;
//!-----------------------------------------------------------------------------
part '../material_app.dart';
part '../services/theme/app_colors.dart';
part '../services/theme/custom_theme.dart';
part '../services/constant/app_strings.dart';
part '../services/loading/page_loading.dart';
part '../services/loading/app_loading.dart';
part '../services/routes/app_routes.dart';
part '../services/alert/custom_snackbar.dart';
part '../services/error/error_text.dart';
part '../packages/components/bottom_navigation_bar.dart';
part '../packages/view/favorite Page/components/favorite_body.dart';
part '../packages/view/Search page/view/search_page.dart';
part '../packages/view/Home Page/view/page_home.dart';
part '../packages/view/Details Page/view/details_page.dart';
part '../packages/view/Home Page/model/model_home_page.dart';
part '../api/api_components.dart';
part '../api/handle_api.dart';
part '../api/control_api.dart';
part '../api/api.dart';
part '../packages/view/Home Page/components/data_home_page.dart';
part '../packages/components/custom_appbar.dart';
part '../packages/view/Details Page/components/details_body.dart';
part '../packages/view/favorite Page/view/page_favorite.dart';
part '../packages/view/Details Page/components/actions.dart';
part '../packages/components/custom_gridview.dart';
part '../services/provider/search_provider.dart';
part '../packages/view/Search page/components/search_body.dart';
part '../services/database/config/favorite_db_config.dart';
part '../services/database/model/model_favorite_db.dart';
part '../services/database/build/favorite_build.dart';
part '../services/database/tables/favorite_table.dart';