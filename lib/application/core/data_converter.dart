import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

Future<File> getFileFromUrl(String strURL) async {
  final http.Response responseData = await http.get(Uri.parse(strURL));
  final uint8list = responseData.bodyBytes;
  var buffer = uint8list.buffer;
  ByteData byteData = ByteData.view(buffer);
  var tempDir = await getTemporaryDirectory();
  final file = File('${tempDir.path}/img');
  file.writeAsBytesSync(
    buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes),
  );
  return file;
}
