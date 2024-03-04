import 'dart:ui';

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    return index == 0 ? _getAddStoryBox() : _getStroyBox();
                  },
                ),
              ),
              _getStoryPost()
            ],
          ),
        ),
      ),
    );
  }

  Widget _getStoryPost() {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Column(
          children: [
            _getHeaderPost(),
            _getPost(),
          ],
        );
      },
    );
  }

  Widget _getPost() {
    return Container(
      width: 394,
      height: 440,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            child: Positioned(
              top: 0,
              child: ClipRRect(
                child: Image.asset('images/post_cover.png'),
              ),
            ),
          ),
          Positioned(
            top: 15,
            right: 15,
            child: Image.asset('images/icon_video.png'),
          ),
          Positioned(
            bottom: 15,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
                child: Container(
                  width: 340,
                  height: 46,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color.fromRGBO(255, 255, 255, 0.5),
                        Color.fromRGBO(255, 255, 255, 0.2)
                      ],
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'images/icon_hart.png',
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            '2.6 K',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'GB',
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 42,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'images/icon_comments.png',
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            '1.5 K',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'GB',
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 42,
                      ),
                      Image.asset('images/icon_share.png'),
                      SizedBox(
                        width: 42,
                      ),
                      Image.asset('images/icon_save.png'),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _getHeaderPost() {
    return Padding(
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
                      fontFamily: 'GB', fontSize: 12, color: Colors.white),
                ),
                Text(
                  'کار آموز برنامه نویسی موبایل و مهندس تست نرم افزار',
                  style: TextStyle(
                      fontFamily: 'SM', fontSize: 12, color: Colors.white),
                )
              ],
            ),
          ),
          Spacer(),
          Image.asset('images/icon_menu.png'),
        ],
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
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6, vertical: 12),
      child: Column(
        children: [
          DottedBorder(
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
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'test',
            style:
                TextStyle(color: Colors.white, fontFamily: 'GB', fontSize: 10),
          ),
        ],
      ),
    );
  }

  Widget _getAddStoryBox() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 6, vertical: 12),
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(17),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              width: 58,
              height: 58,
              decoration: BoxDecoration(
                color: Color(0xff1C1F2E),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset('images/icon_plus.png'),
            ),
          ),
        ),
        Text(
          'Add Story',
          style: TextStyle(color: Colors.white, fontFamily: 'GB', fontSize: 10),
        ),
      ],
    );
  }
}
