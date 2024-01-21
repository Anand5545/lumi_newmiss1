import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:lumi_newmiss1/hive/hive2/hive%20model/user_model.dart';
import '../database/hivedb.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox<User>("userdata");
  runApp(MaterialApp(
    home: Reg(),
  ));
}

class Reg extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RegState();
}

class RegState extends State<Reg> {
  final emailcntrl = TextEditingController();
  final passcntrllr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            "Register",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: emailcntrl,
              decoration: InputDecoration(
                hintText: "EMAIL",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
            child: TextField(
              controller: passcntrllr,
              decoration: InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              final regUserList = await HiveDb.instance.getUser();
              validate_registration(regUserList);
            },
            child: Text("Register"),
          )
        ],
      ),
    );
  }

  void validate_registration(List<User> regUserList) async {
    final eemail = emailcntrl.text.trim();
    final epwd = passcntrllr.text.trim();
    bool userfound = false;
    final validateEmail = EmailValidator.validate(eemail);

    if (eemail != '' && epwd != '') {
      if (validateEmail == true) {
        await Future.forEach(regUserList, (User) {
          //to check if user already exist
          if (User.email == eemail) {
            userfound = true;
          } else {
            userfound = false;
          }
        });

        if (userfound == true) {
          Get.snackbar("Error", "User already existing", colorText: Colors.red);
        } else {
          // to validate password
          final validatepassword = check_password(epwd);
          if (validatepassword == true) {
            final newUser = User(email: eemail, password: epwd);
            await HiveDb.instance.addUser(newUser);
          }
          ;
        }
      } else {
        Get.snackbar("Error", "Enter a valid email id", colorText: Colors.red);
      }
    } else {
      Get.snackbar("Error", "Field must not be empty", colorText: Colors.red);
    }
  }

  bool check_password(String epwd) {
    if (epwd.length < 6) {
      Get.snackbar("Error", "Password must contail atleast 6 letters",
          colorText: Colors.red);
      return false;
    } else {
      return true;
    }
  }
}
