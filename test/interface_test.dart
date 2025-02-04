import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_langdetect/flutter_langdetect.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_langdetect/detector_factory.dart';

void main() {
  group('DetectorTest', () {
    test("detector1", () async {
      WidgetsFlutterBinding.ensureInitialized();
      DetectorFactory.profileBasePath = "assets/profiles/";
      await initLangDetect();
      expect(detect('This is a Pen.'), 'en');

    });
  });
}
