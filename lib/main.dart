import 'package:flutter/material.dart';
import 'package:implement_instagram/screens/home_screen.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          headlineMedium: TextStyle(
              fontFamily: 'GB',
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.white),
        ),
        useMaterial3: false,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xffF35383),
            textStyle: TextStyle(
                fontFamily: 'GB', fontSize: 16, fontWeight: FontWeight.w700),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                15,
              ),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
