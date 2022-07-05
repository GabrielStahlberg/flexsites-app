import 'dart:async';
import 'package:flexsites_app/constants.dart';
import 'package:flexsites_app/ui/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Timer(const Duration(seconds: 5), (){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const HomeScreen())
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [kBackgroundFirst, kBackgroundSecond, kBackgroundFirst],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              tileMode: TileMode.repeated
          ),
        ),
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Image.asset("assets/images/logo7.png"),
        ),
      ),
    );
  }
}
