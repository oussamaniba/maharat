import 'dart:async';
import 'dart:developer' as d;
import 'dart:io';
import 'dart:ui' as ui;
import 'package:country_calling_code_picker/country.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:maharat/features/registration/view/widgets/SearchCountry.dart';

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



showBottomSheetCountries(BuildContext context, [bool showCode = false]) {
  return showModalBottomSheet<Country?>(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(35),
        topRight: Radius.circular(35),
      ),
    ),
    builder: (_) {
      return SizedBox(
        height: MediaQuery.of(context).size.height * .9,
        child: Column(
          children: <Widget>[
            const SizedBox(height: 16),
            Stack(
              children: <Widget>[
                Positioned(
                  right: 8,
                  top: 4,
                  bottom: 0,
                  child: TextButton(
                    child: const Text('Cancel'),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                const Center(
                  child: Text(
                    'Choose Country',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: SearchCountry(
                showCallingCode: showCode,
                onSelected: (country) => Navigator.of(context).pop(country),
              ),
            ),
          ],
        ),
      );
    },
  );
}
