import 'dart:ui';

import 'package:flutter/material.dart';

class BottomSheetPage extends StatelessWidget {
  const BottomSheetPage({this.controller, super.key});
  final ScrollController? controller;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 40.0,
          sigmaY: 40.0,
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          color: Color.fromRGBO(255, 255, 255, 0.09),
          height: 300,
          child: Center(
            child: _getContent(),
          ),
        ),
      ),
    );
  }

  Widget _getContent() {
    return CustomScrollView(
      controller: controller,
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              Container(
                width: 65,
                height: 5,
                margin: EdgeInsets.only(top: 10, bottom: 22),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Share",
                    style: TextStyle(
                      fontFamily: 'GB',
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Image.asset('images/icon_share_bottomsheet.png')
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Container(
                height: 46,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(13),
                  ),
                  color: Color.fromRGBO(255, 255, 255, 0.4),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Image.asset('images/icon_search.png'),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search User',
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(color: Colors.red);
            },
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            crossAxisCount: 4,
          ),
        )
      ],
    );
    // return GridView.builder(
    //   controller: controller,
    //   itemCount: 90,
    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisSpacing: 20,
    //     mainAxisSpacing: 20,
    //     crossAxisCount: 4,
    //   ),
    //   itemBuilder: (BuildContext context, index) {
    //     return Container(
    //       color: Colors.red,
    //     );
    //   },
    // );
  }
}
