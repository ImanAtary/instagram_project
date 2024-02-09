import 'package:flutter/material.dart';
import 'package:implement_instagram/screens/splash_screen.dart';
import 'package:implement_instagram/screens/switch_account_screen.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      home: SwitchScreeen(),
    );
  }
}
