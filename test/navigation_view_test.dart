import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:navigation_view/item_navigation_view.dart';
import 'package:navigation_view/navigation_view.dart';


void main() {
  testWidgets('NavigationView test', (WidgetTester tester) async {

    await tester.pumpWidget(SizedBox(
      width: double.maxFinite,height: 60,
      child: NavigationView(
        onChangePage: (c) {},
        curve: Curves.easeInBack,
        durationAnimation: const Duration(milliseconds: 400),
        items: [
          ItemNavigationView(
              childAfter: const Icon(
                Icons.home_rounded,
                color: Colors.blue,
                size: 30,
              ),
              childBefore: Icon(
                Icons.home_outlined,
                color: Colors.grey.withAlpha(60),
                size: 30,
              )),
          ItemNavigationView(
              childAfter: const Icon(
                Icons.widgets_rounded,
                color: Colors.blue,
                size: 30,
              ),
              childBefore: Icon(
                Icons.now_widgets_outlined,
                color: Colors.grey.withAlpha(60),
                size: 30,
              )),
          ItemNavigationView(
              childAfter: const Icon(
                Icons.wifi,
                color: Colors.blue,
                size: 30,
              ),
              childBefore: Icon(
                Icons.wifi_lock,
                color: Colors.grey.withAlpha(60),
                size: 30,
              )),
          ItemNavigationView(
              childAfter: const Icon(
                Icons.accessible,
                color: Colors.blue,
                size: 30,
              ),
              childBefore: Icon(
                Icons.not_accessible,
                color: Colors.grey.withAlpha(60),
                size: 30,
              )),
        ],
      ),
    ),);


  });
}
