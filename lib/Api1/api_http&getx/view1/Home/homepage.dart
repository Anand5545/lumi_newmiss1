import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lumi_newmiss1/Api1/api_http&getx/controller1/product_controller.dart';
import 'package:lumi_newmiss1/Api1/api_http&getx/view1/Home/widget/product_tile.dart';

void main(List<String> args) {
  runApp(GetMaterialApp(
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  final productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API"),
      ),
      body: SizedBox(
        child: Obx(() {
          if (productController.isLoading.value) {
            return Center(child: CircularProgressIndicator());
          } else {
            return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return ProductTile(productController.productList[index]);
                });
          }
        }),
      ),
    );
  }
}
