import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'ListColletion.dart';

import 'home_header.dart';
class body extends StatefulWidget {
  @override
  _bodyState createState() => _bodyState();
}

class _bodyState extends State<body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: ScreenUtil().setHeight(30)),
              HomeHeader(),
              SizedBox(height: ScreenUtil().setHeight(10)),
              ListCollection(),
              SizedBox(height: ScreenUtil().setHeight(10)),


            ],
          ),
        ));
  }
  }

