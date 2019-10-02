import "package:fluro/fluro.dart";
import 'package:flutter/material.dart';
import 'package:ieee_student/Pages/home_page.dart';
import 'package:ieee_student/Pages/student_login_Page.dart';
import 'home_page.dart';
class Navigation {
  static Router router;

  static void initPaths() {
    router = Router()
      ..define('/', handler: Handler(
          handlerFunc: (BuildContext context, Map<String, dynamic> params) {
        return StudentLoginPage();
      }))
      ..define('HomePage', handler: Handler(
          handlerFunc: (BuildContext context, Map<String, dynamic> params) {
        return HomePage();
      }));
  }

  static void navigateTo(
    BuildContext context,
    String path, {
    bool replace = false,
    TransitionType transition = TransitionType.native,
    Duration transitionDuration = const Duration(milliseconds: 250),
    RouteTransitionsBuilder transitionBuilder,
  }) {
    router.navigateTo(
      context,
      path,
      replace: replace,
      transition: transition,
      transitionDuration: transitionDuration,
      transitionBuilder: transitionBuilder,
    );
  }
}
