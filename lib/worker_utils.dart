library worker_utils;

import "dart:ui";
import 'utils/convertColor.dart';

class MWorker {
  static Color changeHex(String colorHex) => MColor.hex(colorHex);
}
