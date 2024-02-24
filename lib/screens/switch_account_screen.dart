import 'dart:ui';

import 'package:flutter/material.dart';

class SwitchScreeen extends StatelessWidget {
  const SwitchScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage('images/switch_account_background.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  top: 250,
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 20.0,
                        sigmaY: 20.0,
                      ),
                      child: Container(
                        height: 352,
                        width: 340,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromRGBO(225, 225, 225, 0.5),
                                Color.fromRGBO(225, 225, 225, 0.2)
                              ]),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 32),
                            Image(
                              image: AssetImage('images/profile.png'),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Iman Attary',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 30),
                            SizedBox(
                              height: 46,
                              width: 129,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'Confirm',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium,
                                ),
                                style:
                                    Theme.of(context).elevatedButtonTheme.style,
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Switch Account',
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 163),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account? / ',
                  style: TextStyle(
                      fontFamily: 'GB', fontSize: 16, color: Colors.grey),
                ),
                Text(
                  'Sign up',
                  style: TextStyle(
                      fontFamily: 'GB', fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
