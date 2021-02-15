import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
class AutoText extends StatelessWidget {
  double s;
  String text;
  AutoText(double size, String text1){
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
          color: Colors.grey.shade700
      ),
      minFontSize: 8,
      maxLines: 12,
      overflow: TextOverflow.ellipsis,
    );
  }
}
