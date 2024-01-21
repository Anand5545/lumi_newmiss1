import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:lumi_newmiss1/Api1/api_dio/controller1/post_controller.dart';
import 'package:lumi_newmiss1/Api1/api_dio/utils1/colors.dart';
import 'package:lumi_newmiss1/Api1/api_dio/view1/dio_details.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

void main(List<String> args) {
  runApp(GetMaterialApp(home: DioHome(),));
}
class DioHome extends StatelessWidget {
  PostController controller = Get.put(PostController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgcolor,
      floatingActionButton: Obx(
          () => controller.isInternetConncted.value ? buildFAB() : Container()),
      body: Obx(() => SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: controller.isInternetConncted.value
              ? (controller.isLoading.value ? showAnimation() : getData())
              : noInternet(context))),
    );
  }

  FloatingActionButton buildFAB() {
    return FloatingActionButton(
      onPressed: () {
        controller.isListScrolldown.value
            ? controller.scrollup()
            : controller.scrollDown();
      },
      backgroundColor: MyColors.facolor,
      child: FaIcon(controller.isListScrolldown.value
          ? FontAwesomeIcons.arrowUp
          : FontAwesomeIcons.arrowDown),
    );
  }

  showAnimation() {
    return Center(
      child: SizedBox(
        height: 150,
        width: 150,
        child: Lottie.network(
            "https://lottie.host/654ca302-3e61-4e67-93be-abe8e2d9bb41/PdXE5SkBG0.json"),
      ),
    );
  }

  RefreshIndicator getData() {
    return RefreshIndicator(
        child: ScrollablePositionedList.builder(
            itemCount: controller.postList.length,
            itemBuilder: (context, Index) => InkWell(
                  onTap: () => Get.to(DetailsDio()),
                  child: Card(
                    child: ListTile(
                      leading: Container(height: 50,width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text(controller.postList[index]),
                      ),
                    ),
                  ),
                )),
        onRefresh: );
  }

  noInternet(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: Lottie.network("https://app.lottiefiles.com/animation/65c4d1ec-a85f-4e9a-b893-66cab5c1b038?channel=web&source=public-animation&panel=download"),

          )
          MaterialButton(onPressed: ()=> onButtonTap(context),child: Text("Try Again"),)
        ],
      ),
    )
  }

}
