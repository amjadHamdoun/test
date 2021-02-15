import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_unifi/Bloc/eventBloc.dart';
import 'package:test_unifi/Bloc/prdouctBloc.dart';
import 'package:test_unifi/Bloc/stateBloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:test_unifi/Models/prdouct.dart';
class ListCollection extends StatefulWidget {
  @override
  _ListCollectionState createState() => _ListCollectionState();
}
class _ListCollectionState extends State<ListCollection> {
  int itemNumber,pageNumber;
  ScrollController _scrollController = ScrollController();
  bool isloading=false;

  @override
  void initState() {
    itemNumber = 8;
    pageNumber=0;
    BlocProvider.of<BlocPrdouct>(context, listen: false)
        .add(FetchPrdouct(itemsNumber: itemNumber,pageNumber: pageNumber));
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent)
        {
          getMorePrdouct(context);
          isloading=true;
        }

    });
    super.initState();
  }

  getMorePrdouct(BuildContext context) {
    itemNumber += 8;
    BlocProvider.of<BlocPrdouct>(context).add(FetchPrdouct(itemsNumber: itemNumber,pageNumber: pageNumber));
  }
  @override
  Widget build(BuildContext context) {
    return   BlocBuilder<BlocPrdouct, prdouctState>(
            builder: (context, state) {
              if(state is getDataState){
                print(state.pr.length);
                return Container(
                    height:ScreenUtil().screenHeight*0.8,
                    child: new GridView.count(
                      controller: _scrollController,
                      crossAxisCount: MediaQuery.of(context).orientation == Orientation.portrait ? 1 : 2,
                      children: List.generate(
                        state.pr.length,
                            (index) => Photo(index, state.pr),
                      ),
                    ));

              }
              if(state is LoadingState)
                return Container(
                  height:ScreenUtil().screenHeight*0.6,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              else
                return Container();
            }
        );
      }
}
Widget Photo(int index, List<prdouct> img) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    margin: EdgeInsets.all(8),
    child: GridTile(
      footer: Column(
        children: [
          Center(child:
            Text(img[index].author, style: TextStyle(fontSize: 14),)),
        ],
      ),
       child: Container(
         height: ScreenUtil().screenHeight*0.3,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            fit: BoxFit.cover,
           image:  NetworkImage(
             img[index].url,
           ),
          )
        ),
      ),
    ),
  );
}