// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:application_project/controller/list_product_controller.dart';
import 'package:application_project/main.dart';
import 'package:get/get.dart';

void main() {
  testWidgets('Pull to refresh restores the initial product list', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    expect(find.text('MyProducts'), findsOneWidget);
    expect(find.text('MacBook Air M4'), findsOneWidget);

    final controller = Get.find<ListProductController>();
    controller.produkList.removeAt(0);
    await tester.pump();
    expect(find.text('MacBook Air M4'), findsNothing);

    await tester.drag(find.byType(ListView).first, const Offset(0, 400));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 800));
    await tester.pumpAndSettle();

    expect(find.text('MacBook Air M4'), findsOneWidget);
  });
}
