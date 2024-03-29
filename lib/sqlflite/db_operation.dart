import 'package:sqflite/sqflite.dart' as sql;

class SqlHelper {
//create database
  // OpenDb - user defined method to create db
  static Future<sql.Database> OpenDb() async {
    return sql.openDatabase('contact', version: 1,
        onCreate: (sql.Database db, int version) async {
      await createTable(db);
    });
  }

  //create Table
  static Future<void> createTable(sql.Database db) async {
    await db.execute("""CREATE TABLE mycontacts(
       id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
       name TEXT,
       phone TEXT
      )""");
  }

// insert data to database
  static Future<int> createContact(String cname, String cphone) async {
    final db = await SqlHelper.OpenDb(); // to open database
    final data = {"name": cname, "phone": cphone};
    final id = db.insert('mycontacts', data);
    return id;
  }

  static Future<List<Map<String, dynamic>>> readData() async {
    final db = await SqlHelper.OpenDb();
    return db.query('Mycontacts', orderBy: 'id'); // read all db by id
  }

  static updateContact(int? id, String uname, String uphone) async {
    final db = await SqlHelper.OpenDb();
    final update = {"Name": uname, "phone": uphone};
    await db.update("Mycontacts", update, where: 'id =?', whereArgs: [id]);
  }
}
