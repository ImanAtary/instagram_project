import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      appBar: AppBar(
        backgroundColor: Color(0xff1C1F2E),
        elevation: 0,
        title: Container(
          child: Image.asset('images/mood.png'),
        ),
        actions: [
          Container(
            width: 24,
            height: 24,
            margin: EdgeInsets.only(right: 15),
            child: Image.asset('images/icon_direct.png'),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  _getAddStoryBox(),
                  SizedBox(
                    width: 15,
                  ),
                  _getStroyBox(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  _getProfileBox(),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Iman Attary',
                          style: TextStyle(
                              fontFamily: 'GB',
                              fontSize: 12,
                              color: Colors.white),
                        ),
                        Text(
                          'کار آموز برنامه نویسی موبایل و مهندس تست نرم افزار',
                          style: TextStyle(
                              fontFamily: 'SM',
                              fontSize: 12,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Image.asset('images/icon_menu.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getProfileBox() {
    return DottedBorder(
      borderType: BorderType.RRect,
      strokeWidth: 2,
      radius: Radius.circular(17),
      padding: EdgeInsets.all(4),
      dashPattern: [50, 10],
      color: Color(0x0ffF35383),
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        child: Container(
          height: 38,
          width: 38,
          child: Image.asset('images/profile_iman.png'),
        ),
      ),
    );
  }

  Widget _getStroyBox() {
    return DottedBorder(
      borderType: BorderType.RRect,
      strokeWidth: 2,
      radius: Radius.circular(17),
      padding: EdgeInsets.all(4),
      dashPattern: [50, 10],
      color: Color(0x0ffF35383),
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        child: Container(
          height: 58,
          width: 58,
          child: Image.asset('images/profile_iman.png'),
        ),
      ),
    );
  }

  Widget _getAddStoryBox() {
    return Container(
      width: 64,
      height: 64,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Color(0xff1C1F2E),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.asset('images/icon_plus.png'),
        ),
      ),
    );
  }
}
