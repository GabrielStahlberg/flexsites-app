import 'package:flexsites_app/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'constants.dart';
import 'route_generator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const FlexSitesApp());
}

final ThemeData defaultTheme = ThemeData(
  primaryColor: kPrimaryColor,
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kPrimaryLightColor
  )
);

class FlexSitesApp extends StatefulWidget {
  const FlexSitesApp({Key? key}) : super(key: key);

  @override
  _FlexSitesAppState createState() => _FlexSitesAppState();
}

class _FlexSitesAppState extends State<FlexSitesApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: defaultTheme,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
