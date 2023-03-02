// Flutter imports:
import 'package:flutter/material.dart';
// Project imports:
import 'package:flutter_sample/page/test.dart';
// Package imports:
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Test widget test', () {
    testWidgets('testテキストの存在チェック', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: Test()));

      expect(find.text('test'), findsOneWidget);
    });
  });
}
