import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_unifi/Screen/Home/Home.dart';
import 'package:test_unifi/Screen/Login/components/background.dart';
import 'package:test_unifi/Screen/Login/components/rounded_button.dart';
import 'package:test_unifi/Screen/Login/components/rounded_input_field.dart';
import 'package:test_unifi/Screen/Login/components/rounded_password_field.dart';
import 'already_have_an_account_acheck.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  String emailController;

  String passwordController;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            SizedBox(height: size.height * 0.35),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(

              hintText: "Your Email",
              onChanged: (value) {
                emailController = value;
              },
            ),
            RoundedPasswordField(
              onChanged: (value) {
                passwordController = value;
              },
            ),
            RoundedButton(
              text: "LOGIN",
              press: () async{
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Home();
                    },
                  ),
                );

              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {

              },
            ),
            SizedBox(height: size.height * 0.06),
          ],
        ),
      ),
    );
  }



}