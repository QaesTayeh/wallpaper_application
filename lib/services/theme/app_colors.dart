part of '../../app_import/app_import.dart';

class AppColors {
  static Color _colorFromHex(String hexColor, [String opcity = 'FF']) {
    final String color = hexColor.replaceAll('#', '');
    return Color(int.parse(opcity + color, radix: 16));
  }

  static final Color primary = _colorFromHex('#7B1111');
  static final Color primaryDark = _colorFromHex('#4F0000');
  static final Color ashen = _colorFromHex('#BABABA');
  static final Color red = _colorFromHex('#F44336');
  static final Color white = _colorFromHex('#FFFFFF');
  static final Color blackCardSocial = _colorFromHex('#000000', '54');
}
