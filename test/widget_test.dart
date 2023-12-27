import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:masteringlayoutandtamingthewidgettree51placingwidgetsoneafteranother_proportionallayoutwithflexiblewidgets/main.dart';

void main() {
  testWidgets('Proportional Layout with Flexible Widgets',
      (WidgetTester tester) async {
    await tester.pumpWidget(MyApp()); // Replace with your actual app widget

    // Verify the Row widget is used
    expect(find.byType(Row), findsOneWidget);

    // Verify the existence of three Flexible widgets
    expect(find.byType(Flexible), findsNWidgets(3));

    // Verify the proportions of the Flexible widgets
    final Finder flexWidgets = find.byType(Flexible);
    final List<Widget> flexChildren = tester.widgetList(flexWidgets).toList();

    // Check if the first and third Flexible widgets have flex = 1
    expect((flexChildren[0] as Flexible).flex, 1);
    expect((flexChildren[2] as Flexible).flex, 1);

    // Check if the middle Flexible widget has flex = 2
    expect((flexChildren[1] as Flexible).flex, 2);
  });
}
