import 'package:flutter/material.dart';

import '../presentation/resources/routes.dart';
import '../presentation/resources/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getApplicationTheme(),
      onGenerateRoute: RoutesGenerator.getRoute,
      initialRoute: Routes.onBoardingRoute,
    );
  }
}
