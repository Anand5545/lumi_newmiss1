import 'package:hive/hive.dart';
import 'package:lumi_newmiss1/hive/hive2/hive%20model/user_model.dart';

class HiveDb {
  HiveDb._internal();
  static HiveDb instance = HiveDb._internal();

  factory HiveDb() {
    return instance;
  }

  Future<List<User>> getUser() async {
    final db = await Hive.openBox<User>('userData');
    return db.values.toList();
  }

  Future<void> addUser(User newUser) async {
    final db = await Hive.openBox<User>("userdata");
    db.put(newUser.id, newUser);
  }
}
