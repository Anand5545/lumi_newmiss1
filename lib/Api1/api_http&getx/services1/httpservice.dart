import 'package:http/http.dart' as http;
import 'package:lumi_newmiss1/Api1/api_http&getx/model1/product_model.dart';

class Httpservice {
  static Future<List<Products>> fetchProducts() async {
    var response =
        await http.get(Uri.parse("https://fakestoreapi.com/products"));
    if (response.statusCode == 200) {
      //200 - success
      var data = response.body;
      return productsFromJson(data);
    } else {
      throw Exception();
    }
  }
}
