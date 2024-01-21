import 'package:get/get.dart';
import 'package:lumi_newmiss1/Api1/api_http&getx/services1/httpservice.dart';

class ProductController extends GetxController {
  //bool isloading = true;
  RxBool isLoading = true.obs; //to monitor or to make
  // 'obs' used to make observeable
  var productList = [].obs;
  @override
  void onInit() {
    load_product();
    super.onInit();
  }

  void load_product() async {
    try {
      isLoading(true);
      var products = await Httpservice.fetchProducts();
      if (products != Null) {
        productList.value = products;
      }
    } catch (e) {
      print(e);
    } finally {
      isLoading(false);
    }
  }
}
