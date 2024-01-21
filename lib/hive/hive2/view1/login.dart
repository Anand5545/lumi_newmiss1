import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:lumi_newmiss1/hive/hive2/database/hivedb.dart';
import 'package:lumi_newmiss1/hive/hive2/hive%20model/user_model.dart';
import 'package:lumi_newmiss1/hive/hive2/view1/hivehome.dart';
import 'package:lumi_newmiss1/hive/hive2/view1/registration.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox<User>("userdata");
  runApp(GetMaterialApp(
    home: Hivelogin(),
  ));
}

class Hivelogin extends StatelessWidget {
  final email_ctrl = TextEditingController();
  final pwd_ctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(
        children: [
          TextField(
            controller: email_ctrl,
            decoration: InputDecoration(hintText: "email"),
          ),
          TextField(
            controller: pwd_ctrl,
            decoration: InputDecoration(hintText: "password"),
          ),
          ElevatedButton(
              onPressed: () async {
                final regUserList = await HiveDb.instance.getUser();
                validate_login(regUserList);
              },
              child: Text("login")),
          TextButton(
              onPressed: () {
                Get.to(Reg());
              },
              child: Text("Didnt have an account!register..."))
        ],
      ),
    );
  }

  Future<void> validate_login(List<User> regUserList) async {
    final eemail = email_ctrl.text.trim();
    final epwd = pwd_ctrl.text.trim();
    bool userFound = false;

    if (eemail != "" && epwd != '') {
      await Future.forEach(regUserList, (user) {
        ///to check email already existing
        if (user.email == eemail && user.password == epwd) {
          userFound = true;
        } else {
          userFound = false;
        }
      });
      if (userFound == true) {
        Get.snackbar("Success", "Login Successful", colorText: Colors.green);
        Get.to(Hivehome());
      }
    } else {
      Get.snackbar("Error", "Email and password field must not be empty",
          colorText: Colors.red);
    }
  }
}
