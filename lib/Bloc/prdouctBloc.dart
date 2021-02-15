import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_unifi/Models/prdouct.dart';
import 'package:test_unifi/Service/remote_services.dart';
import 'eventBloc.dart';
import 'stateBloc.dart';


class BlocPrdouct extends Bloc<prdouctevent, prdouctState>{

  RemoteServices _remoteServices;
  bool First;
  List<prdouct> result;
  int preResult;
  int page=0;
  BlocPrdouct(prdouctState initialState,this._remoteServices,this.First) : super(initialState);
  @override
  int get initialState => 0;

  @override
  Stream<prdouctState> mapEventToState(prdouctevent event) async* {
    if (event is FetchPrdouct) {
      if(First){
        yield LoadingState();
        result=[];
        preResult=-1;
        First=false;
        print(result.length);
      }
        result= await RemoteServices.fetchProducts(event.pageNumber+page,event.itemsNumber); {
          if (result.isNotEmpty) {
            if(preResult!=result.length)
              {
                preResult=result.length;
                print(result.length);
                yield getDataState(pr: result);
              }
            else if(preResult==result.length)
              {
              page++;
              result= await RemoteServices.fetchProducts(event.pageNumber+page,event.itemsNumber);
              yield getDataState(pr: result);
            }
        }
      }
    }

  }
}