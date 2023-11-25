import 'package:chatty/common/routes/names.dart';
import 'package:chatty/pages/frames/welcome/state.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  WelcomeController();
  final title = "Chatty .";
  final state = WelcomeState();

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(seconds: 3), () => Get.offAllNamed(AppRoutes.Message));
  }
}
