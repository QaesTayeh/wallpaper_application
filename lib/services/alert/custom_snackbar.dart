part of '../../app_import/app_import.dart';

class AppSnackBar {
  static void snackBarSuccess(BuildContext context, {required String message}) {
    showTopSnackBar(
        padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
        context,
        SizedBox(
            height: 35.h,
            width: 90.w,
            child: CustomSnackBar.success(
                maxLines: 1,
                icon: const Icon(null),
                message: message,
                backgroundColor: AppColors.ashen,
                textStyle: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 16))),
        displayDuration: const Duration(milliseconds: 1000));
  }

  static void snackBar(BuildContext context, {required String message}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
