import 'package:flutter/material.dart';
import 'package:lumi_newmiss1/sqlflite/db_operation.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Sqlflitecrud(),
  ));
}

class Sqlflitecrud extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SqlfliteCrudState();
}

class _SqlfliteCrudState extends State<Sqlflitecrud> {
  final name_ctrl = TextEditingController();
  final phone_ctrl = TextEditingController();
  List<Map<String, dynamic>> contacts = []; //to store data retrived from db
  var isloading = true;
  @override
  void initState() {
    ///initally to show the data at starting
    loadData(); //to get data from DB
    super.initState();
  }

  void loadData() async {
    final data = await SqlHelper.readData();
    setState(() {
      contacts = data;
      isloading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showsheet(null),
        child: Icon(Icons.add),
      ),
      // body: isloading
      //     ? const Text(" No Data")
      //     : ListView.builder(
      //         itemCount: contacts.length,
      //         itemBuilder: (context, index) => Card(
      //           child: ListTile(
      //               title: Text(contacts[index]['name']),
      //               subtitle: Text(contacts[index]['Phone']),
      //               trailing: Wrap(
      //                 children: [
      //                   IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
      //                   IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
      //                 ],
      //               )
      // ),
      //         ),
      //       )

      body: isloading
          ? Text("NO DATA")
          : ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (context, index) => Card(
                    child: ListTile(
                      title: Text(contacts[index]['name']),
                      subtitle: Text(contacts[index]['phone']),
                      trailing: Wrap(
                        children: [
                          IconButton(
                              onPressed: () {
                                showsheet(contacts[index]['id']);
                              },
                              icon: Icon(Icons.edit)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.delete))
                        ],
                      ),
                    ),
                  )),
    );
  }

  showsheet(int? id) {
    if (id != null) {
      var selected_contact =
          contacts.firstWhere((element) => element['id'] == id);
      name_ctrl.text = selected_contact['name'];
      phone_ctrl.text = selected_contact['phone'];
    }

    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            child: Column(
              children: [
                TextField(
                  controller: name_ctrl,
                  decoration: InputDecoration(hintText: "Name :"),
                ),
                TextField(
                  controller: phone_ctrl,
                  decoration: InputDecoration(hintText: "Phone :"),
                ),
                ElevatedButton(
                    onPressed: () async {
                      if (id == null) {
                        await create_contact();
                      }
                      ;
                      if (id != null) {
                        await update_contact(id);
                      }
                    },
                    child: Text(id == null ? "Create" : "Update"))
              ],
            ),
          );
        });
  }

  Future<void> create_contact() async {
    await SqlHelper.createContact(name_ctrl.text, phone_ctrl.text);
    loadData();
  }

  Future<void> update_contact(int id) async {
    await SqlHelper.updateContact(id, name_ctrl.text, phone_ctrl.text);
    Navigator.pop(context);
    loadData();
  }
}
