import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:test_unifi/Service/remote_services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_unifi/Bloc/prdouctBloc.dart';
import 'package:test_unifi/Bloc/stateBloc.dart';
import 'Screen/Login/login_screen.dart';

void main() {
  var locale;
  if(Platform.localeName.substring(0,2)=='ar')
  {
    locale=Locale('ar', 'AR');
  }
  else{
    locale=Locale('en', 'US');
  }
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en', 'US'), Locale('ar', 'AR')],
        path: 'assets/translations',
        saveLocale: true,
        fallbackLocale:locale ,
        child: MyApp()
    ),
  );
}
class MyApp extends StatelessWidget {
  @override
  RemoteServices _repository;
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)=>BlocPrdouct(InitState(),_repository,true),
      child: ScreenUtilInit(
        designSize: Size(360, 690),
        allowFontScaling: false,
        builder: () => MaterialApp(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: LoginScreen(),
        ),
      ),
    );
  }
}

