import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../data/db/database.dart';

class EditNoteController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController titleC = TextEditingController();
  TextEditingController descC = TextEditingController();

  Future<void> editNote(Notes note) async {
    note.title = titleC.text;
    note.desc = descC.text;

    note.save();
  }
}
