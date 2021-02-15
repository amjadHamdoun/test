import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
class AutoTextBlod extends StatelessWidget {
  double s;
  String text;

  AutoTextBlod(double size, String text1){
    s=size;
    text=text1;
  }

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: TextStyle(
          fontSize:  s,
          package: 'assets/fonts/Raleway-Regular.ttf',
          fontFamily: 'Raleway',
          color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      minFontSize: 12,
      maxLines: 4,
      overflow: TextOverflow.ellipsis,
    );
  }
}
