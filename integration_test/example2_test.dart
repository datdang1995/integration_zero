import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_zero/main.dart';
import 'package:patrol/patrol.dart';

void main() {
  patrolTest(
    'counter is at 2 when tap twice',
    nativeAutomation: true,
    ($) async {
      await $.pumpWidgetAndSettle(const MyApp());
      await $(FloatingActionButton).tap();
      await $(FloatingActionButton).tap();
      expect($('2'), findsOneWidget);
    },
  );
}
