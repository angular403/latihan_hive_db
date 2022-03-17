import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:latihan_hive_db/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';
import '../../../routes/app_pages.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ALL NOTES'),
        centerTitle: true,
      ),
      body: ListView.builder(
        
        itemCount: 10,
        itemBuilder: (context, index) => ListTile(
        onTap: () => Get.toNamed(Routes.EDIT_NOTE, arguments: index),
          leading: CircleAvatar(
            child: Text("${index + 1}"),
          ),
          title: Text("${index + 1}"),
          subtitle: Text("${index + 1}"),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.delete_forever),
            color: Colors.red,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.ADD_NOTE);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
