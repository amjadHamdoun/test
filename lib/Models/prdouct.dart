import 'dart:convert';
class prdouct {
  String id;
  String author;
  String url;
  prdouct({this.url,this.id,this.author});
  toMap()=>{
    'id':id,
    'author':author,
    'download_url':url,
  };
  prdouct.fromMap(Map <String,dynamic>map):
        url=map['download_url'],
        author=map['author'],
        id=map['id'];
}
List<prdouct> prdouctFromJson(String str) =>
    List<prdouct>.from(json.decode(str).map((x) => prdouct.fromMap(x)));
String productToJson(List<prdouct> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toMap())));