import 'package:equatable/equatable.dart';
import 'package:test_unifi/Models/prdouct.dart';
abstract class prdouctState extends Equatable{
  const prdouctState();
  @override
  List<Object> get props=>[];
}
class InitState extends prdouctState{}
class LoadingState extends prdouctState{}
class getDataState extends prdouctState{
  List<prdouct> pr;
  bool isload;
  getDataState({this.pr,this.isload});
  @override
  List<Object> get props => [pr];
}



