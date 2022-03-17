import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_note_controller.dart';

class AddNoteView extends GetView<AddNoteController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AddNoteView'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          TextField(
            controller: controller.titleC,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: 'TITLE',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 15),
          TextField(
            controller: controller.descC,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: "DESCRIPTION",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 20),
          Obx(() => ElevatedButton.icon(
                onPressed: () {
                  if (controller.isLoading.isFalse) {}
                },
                icon: Icon(Icons.save),
                label: Text(
                  controller.isLoading.isFalse ? "SAVE DATA" : "LOADING....",
                  style: TextStyle(fontSize: 25),
                ),
              )),
        ],
      ),
    );
  }
}
