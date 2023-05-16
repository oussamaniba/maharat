import 'dart:async';
import 'dart:developer' as d;
import 'dart:io';
import 'dart:ui' as ui;
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

Future<Uint8List> getBytesFromAsset(String path, int width) async {
  ByteData data = await rootBundle.load(path);
  ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(), targetWidth: width);
  ui.FrameInfo fi = await codec.getNextFrame();
  return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!.buffer.asUint8List();
}

Map<String, dynamic> decodeJWT(String jwt) {
  return JwtDecoder.decode(jwt);
}

String format(String f, DateTime date) {
  return DateFormat(f).format(date);
}

Future<void> loadSecurityCertificat() async {
  ByteData data = await PlatformAssetBundle().load('assets/cert.pem');
  SecurityContext.defaultContext.setTrustedCertificatesBytes(data.buffer.asUint8List());
}

void logEvent(dynamic input) {
  d.log("${DateTime.now()}: ${input.toString()}", level: 10);
}
