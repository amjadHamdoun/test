
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/screen_util.dart';

import 'constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.text,
    this.press,
    this.color,
    this.iconData,
    this.fontSize
  }) : super(key: key);
  final String text;
  final Function press;
  final IconData iconData;
  final Color color;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: ScreenUtil().setHeight(50),
      child: NeumorphicButton(
          style: NeumorphicStyle(
            color: mPrimaryColor,
            shape: NeumorphicShape.convex,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
          ),

        onPressed: press,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData,color: Colors.black,

            ),
            SizedBox(width: 7,),
            Text(
              text,
              style: TextStyle(
                fontSize:  ScreenUtil().setSp(16) ,
                package: 'assets/fonts/Raleway-Regular.ttf',
                fontFamily: 'Raleway',
                color: Colors.grey.shade200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
