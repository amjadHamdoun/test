import 'package:http/http.dart' as http;
import 'package:test_unifi/Models/prdouct.dart';

class RemoteServices {
  static var client = http.Client();
  static Future<List<prdouct>> fetchProducts(int page,int items) async {
    String url='https://picsum.photos/v2/list?page=$page+&limit='+items.toString();
    print(url);
    var response = await client.get(url);
    if (response.statusCode == 200) {
      print(response.statusCode);
      var jsonString = response.body;
      print(jsonString);
      return prdouctFromJson(jsonString);
    }
    else {
      return null;
    }
  }


}

