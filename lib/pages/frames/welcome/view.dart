import 'package:chatty/common/values/colors.dart';
import 'package:chatty/pages/frames/welcome/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({super.key});

  Widget _buildPageHeadTitle(String title){
    return Center(
      child: Container(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            color: AppColors.primaryElementText,
            fontWeight: FontWeight.bold,
            fontSize: 45.sp
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryElement,
      body: Container(
        height: 780.h,
        width: 360.w,
        child: _buildPageHeadTitle(controller.title),
      ),
    );
  }
}
