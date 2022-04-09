import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

class ImageHelper {
  const ImageHelper._();

  static Future<File> getFileFromAssets(String path) async {
    final byteData = await rootBundle.load(path);

    File file = File('${(await getTemporaryDirectory()).path}/$path');
    file = await file.create(recursive: true);
    await file.writeAsBytes(byteData.buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));

    return file;
  }
}
