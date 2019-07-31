import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lee_music/lee_music.dart';

void main() {
  const MethodChannel channel = MethodChannel('lee_music');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

 
}
