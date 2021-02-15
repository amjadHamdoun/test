import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:test_unifi/Bloc/eventBloc.dart';
import 'package:test_unifi/Bloc/prdouctBloc.dart';
import 'package:test_unifi/Bloc/stateBloc.dart';
import 'package:test_unifi/Models/prdouct.dart';
import 'package:test_unifi/Screen/Home/componts/body.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int itemNumber,pageNumber;
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    itemNumber = 8;
    pageNumber=1;
    BlocProvider.of<BlocPrdouct>(context, listen: false)
        .add(FetchPrdouct(itemsNumber: itemNumber,pageNumber: pageNumber));
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent)
        getMorePrdouct(context);
    });
    super.initState();
  }

  getMorePrdouct(BuildContext context) {
    itemNumber += 8;
    BlocProvider.of<BlocPrdouct>(context).add(FetchPrdouct(itemsNumber: itemNumber,pageNumber: pageNumber));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
    );
  }
}

