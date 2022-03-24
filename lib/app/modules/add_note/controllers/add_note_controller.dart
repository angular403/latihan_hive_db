import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import '../../../data/db/database.dart';

class AddNoteController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController titleC = TextEditingController();
  TextEditingController descC = TextEditingController();

  Future<void> addNote() async {
    if (titleC.text.isNotEmpty && descC.text.isNotEmpty) {
      // Membuat tanpa id
      Notes note = Notes()
        ..title = titleC.text
        ..desc = descC.text;

      final box = NoteManager.getAllNotes();

      // Mendapatkan id auto increment

      int id = await box.add(note);
      note.id = id;
      note.save();

      // Edit note dengan id yang kita dapat
      print("ID : $id");
      print("Berhasil Menambahkan data ke Box ( Local Storage dengan Hive");
      print(box.toMap()[id]!.id);
      print(box.toMap()[id]!.title);
      print(box.toMap()[id]!.desc);
    }
  }
}
