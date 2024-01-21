import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:lumi_newmiss1/Api1/api_dio/Service1/dio_service.dart';
import 'package:lumi_newmiss1/Api1/api_dio/model1/post_model.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class PostController extends GetxController {
  RxList postList = RxList();
  RxBool isLoading = true.obs;
  RxBool isInternetConncted = true.obs; //change to observable
  RxBool isListScrolldown = false.obs;
  var url = 'https://jsonplaceholder.typicode.com/posts';
  var itemController =
      ItemScrollController(); //to perform scroll actions in scrollable+positioned_list
  //for checking internet connection
  checkIfInternetConnected() async {
    isInternetConncted.value = await InternetConnectionChecker().hasConnection;
  }

  //calling api and get response
  getPost() async {
    checkIfInternetConnected();
    isLoading.value = true;
    var response = await DioService().getMethord(url);
    if (response.statusCode == 200) {
      response.data.forEach((element) {
        postList.add(PostModel.fromJson(element));
      });
      isLoading.value = false;
    }
  }

  scrollDown() {
    itemController.scrollTo(
        index: postList.length,
        duration: Duration(seconds: 2),
        curve: Curves.bounceIn);
    isListScrolldown.value = true;
  }

  scrollup() {
    itemController.scrollTo(
        index: 0, duration: Duration(seconds: 2), curve: Curves.bounceOut);
    isListScrolldown.value = false;
  }

  @override
  void onInit() {
    getPost();
    isInternetConncted();
    super.onInit();
  }
}
