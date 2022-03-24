import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../data/db/database.dart';
import '../controllers/edit_note_controller.dart';

class editNoteView extends GetView<EditNoteController> {
  Notes note = Get.arguments;
  @override
  Widget build(BuildContext context) {
    controller.titleC.text = note.title!;
    controller.descC.text = note.desc!;
    
    return Scaffold(
      appBar: AppBar(
        title: Text('EDIT NOTE'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          TextField(
            controller: controller.titleC,
            autocorrect: false,
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
            autocorrect: false,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: "DESCRIPTION",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 20),
          Obx(
            () => ElevatedButton.icon(
              onPressed: () async {
                if (controller.isLoading.isFalse) {
                  await controller.editNote(note);
                  Get.back();
                }
              },
              icon: Icon(Icons.save),
              label: Text(
                controller.isLoading.isFalse ? "UPDATE DATA" : "LOADING....",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
