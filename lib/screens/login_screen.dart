import 'package:flutter/material.dart';
import 'dart:ui';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

FocusNode state1 = FocusNode();
FocusNode state2 = FocusNode();

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    state1.addListener(() {
      setState(() {});
    });
    state2.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xff323A99),
          Color(0xffF98BFC),
        ],
      )),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              _getImageContainer(),
              _getColumnContainer(),
            ],
          )),
    );
  }

  Widget _getImageContainer() {
    return Positioned(
      left: 0,
      right: 0,
      top: 80,
      bottom: 0,
      child: Column(
        children: [
          Expanded(
            child: Container(
              child: Image(
                image: AssetImage('images/rocket.png'),
              ),
            ),
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }

  Widget _getColumnContainer() {
    return Column(
      children: [
        Expanded(
          child: Container(),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff1C1F2E),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sign in to ',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image(
                      image: AssetImage('images/mood.png'),
                    )
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: TextField(
                    focusNode: state1,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        fontFamily: 'GM',
                        fontSize: 16,
                        color: state1.hasFocus
                            ? Color(0x0ffF35383)
                            : Color(0xffC5C5C5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        borderSide: BorderSide(
                          width: 3,
                          color: const Color(0xffF35383),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        borderSide: BorderSide(
                          width: 3,
                          color: Color(0x0ffF35383),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: TextField(
                    focusNode: state2,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                          fontFamily: 'GM',
                          fontSize: 16,
                          color: state2.hasFocus
                              ? Color(0x0ffF35383)
                              : Color(0xffC5C5C5)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        borderSide: BorderSide(
                          width: 3,
                          color: Color(0x0ffF35383),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        borderSide: BorderSide(
                          width: 3,
                          color: Color(0x0ffF35383),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    state1.dispose();
    state2.dispose();
    super.dispose();
  }
}
