import 'package:flutter/material.dart';
import 'autoText.dart';
import 'autoTextgrey.dart';
class drawerItem extends StatelessWidget {
  IconData icon;
  String text;
  bool counter;
   VoidCallback press;
   int myindex;
  drawerItem(IconData Icon1,String Text1,bool counter1,VoidCallback press1, int index){
    icon=Icon1;
    text=Text1;
    counter=counter1;
    press=press1;
    myindex=index;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.1,
      child: FlatButton(
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          onPressed:(){},
          child: Container(
             height: MediaQuery.of(context).size.height*0.1,
                child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                  Row(
                     children: [
                      Align(alignment: Alignment.topCenter,
                          child: Container(
                              height: MediaQuery.of(context).size.height*0.075,
                              child: Icon(icon,color: Colors.grey.shade800,))),
                       SizedBox(width: 10,),
                       Align(alignment: Alignment.center,
                           child: AutoTextgrey(18,text,Colors.grey.shade600)),
                 ],
                 ),
                  counter==true?Container(
                    height: double.infinity,
                    width: MediaQuery.of(context).size.width/6,
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text('3',style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,

                          ),),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                        border: Border.all(color: Colors.red),
                                 ),
                         )
                      :Container(),
                   ],
                   ),
                   ),
                   ),
                    );

  }
}
