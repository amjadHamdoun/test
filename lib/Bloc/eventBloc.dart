abstract class prdouctevent{}

class FetchPrdouct extends prdouctevent{
  final int itemsNumber;
  final int pageNumber;
  FetchPrdouct({this.pageNumber,this.itemsNumber});

  @override
  List<Object> get props => [pageNumber,itemsNumber];
}
