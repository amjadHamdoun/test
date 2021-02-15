
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/screen_util.dart';

Color mBackgroundColor = Color(0xFFFFFFFF);

Color mCardBackgroundColor = Color(0xFFecebe7);

Color mDarkBackgroundColor = Colors.lightBlue.shade300;

Color mPrimaryColor = Colors.lightBlue.shade200;
final otpInputDecoration = InputDecoration(
  contentPadding:
  EdgeInsets.symmetric(vertical: ScreenUtil().setWidth(20)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);
OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(ScreenUtil().setWidth(20)),
    borderSide: BorderSide(color: Colors.red),
  );
}
final headingStyle = TextStyle(
  fontSize: ScreenUtil().setSp(24) ,
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);


const cosmeticsFullList = [
  'assets/images/product_full1.png',
  'assets/images/product_full2.png'
];
// Form Error
final RegExp emailValidatorRegExp =
RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
 String kEmailNullError = 'Please Enter your email'.tr().toString();
 String kInvalidEmailError = "Please Enter Valid Email".tr().toString();
 String kPassNullError = "Please Enter your password".tr().toString();
 String kShortPassError = "Password is too short".tr().toString();
 String kMatchPassError = "Passwords don't match".tr().toString();
 String kNamelNullError = "Please Enter your name".tr().toString();
 String kPhoneNumberNullError = "Please Enter your phone number".tr().toString();
 String kAddressNullError = "Please Enter your address".tr().toString();


