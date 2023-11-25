import 'package:chatty/common/services/storage.dart';
import 'package:chatty/common/store/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Global{
  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Get.putAsync<StorageService>(() => StorageService().init());
    Get.put<UserStore>(UserStore());
  }
}