import 'package:get/get.dart';
import 'package:flutter/material.dart';
class EditNoteController extends GetxController {
   RxBool isLoading = false.obs;
  TextEditingController titleC = TextEditingController();
  TextEditingController descC = TextEditingController();
}
