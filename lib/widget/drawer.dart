import 'package:flutter/material.dart';
import 'autoText.dart';
import 'autoTextgrey.dart';
import 'drawerItem.dart';
class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
      Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                
                const Color(0xFFF1DFD1),
                const Color(0xFFE8D1B2),
                const Color(0xFFE8C99B),
              ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(1.0, 0.0),
              tileMode: TileMode.clamp),
        ),
        child: Column(
          children: [
            SizedBox(height:MediaQuery.of(context).size.height*0.1 ,),
            Container(
              height: MediaQuery.of(context).size.height*0.15,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 7,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.15,
                    height: MediaQuery.of(context).size.height*0.1,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/user.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 7,),
                  Container(
                    child:   Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: AutoText(
                         18,'Darlene Robertson'
                          ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                ),


                              ),
                              SizedBox(width: 5,),
                              AutoTextgrey(14,'online',Colors.grey.shade500),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,),
            drawerItem(Icons.home_outlined,'Catalogue',false,(){},1),
            SizedBox(height: 5,),
            drawerItem(Icons.shopping_cart_outlined,'MyCart',true,(){},2),
            SizedBox(height: 5,),
            drawerItem(Icons.favorite_outline,'Favourites',false,(){},3),
            SizedBox(height: 5,),
            drawerItem(Icons.assignment_turned_in_outlined,'MyOrder',true,(){},4),
            SizedBox(height: 5,),
            drawerItem(Icons.settings_outlined,'Settings',false,(){},5),
          ],
        ),
      ),

    );
  }
}
