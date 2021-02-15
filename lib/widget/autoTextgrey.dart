import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
class AutoTextgrey extends StatelessWidget {
  double s;
  String text;
  Color color=Colors.grey.shade400;
  AutoTextgrey(double size,String text1, Color color2){
    s=size;
    text=text1;
     color=color2;
  }



  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,

      style: TextStyle(
          fontSize:  s,
          color: color,
          fontFamily: 'Raleway',
      ),
      minFontSize: 12,
      maxLines: 12,
      overflow: TextOverflow.ellipsis,
    );
  }
}