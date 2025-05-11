import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ui_kit/utils/empty_expanded.dart';
import 'package:flutter_ui_kit/utils/gap.dart';

void main() {
  testWidgets("GAP Widgets render with correct size", (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(home: Scaffold(body: Column(children: [HEIGHT10, WIDTH10]))),
    );

    final heightBox = tester.widget<Height>(find.byWidget(HEIGHT10));

    // 2. HEIGHT10 확인: SizedBox 높이가 10인지
    expect(heightBox.height, 10);


    // 3. WIDTH10 확인 : SizedBox 넓이가 10인지
    final widthBox = tester.widget<Width>(find.byWidget(WIDTH10));

    expect(widthBox.width, 10);


  });
}
