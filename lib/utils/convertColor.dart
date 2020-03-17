import 'dart:ui';

class MColor {
  static int initColor(String colorHex) {
    if (colorHex.isEmpty) throw ArgumentError("必须传入参数");
    String _color = colorHex.trim();
    RegExp colorPattern = RegExp(r"(^#\w{6}$)");
    if (!colorPattern.hasMatch(_color))
      throw ArgumentError("传入的颜色格式错误,请输入Hex模式颜色值");
    int convertData = int.tryParse(colorHex.substring(1), radix: 16);
    convertData |= 0x00000000ff000000;
    if (convertData.toString().length == 10) {
      return convertData;
    } else {
      throw ArgumentError("传入的Hex颜色值错误,检查后重试");
    }
  }

  static Color hex(String colorHex) {
    return Color(initColor(colorHex));
  }
}
