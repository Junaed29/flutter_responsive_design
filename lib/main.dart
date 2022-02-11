import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'courses_page.dart';

void main() => runApp(const AppWidget());

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (ctx, widget) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget!),
          breakpoints: [
            const ResponsiveBreakpoint.resize(350, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(600, name: TABLET),
            const ResponsiveBreakpoint.resize(800, name: DESKTOP),
            const ResponsiveBreakpoint.autoScale(1700, name: "XL"),
          ]),
      title: 'Flutter Responsive Framework',
      home: const CoursesPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
