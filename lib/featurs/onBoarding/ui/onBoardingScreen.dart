import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_complete_project/core/helpers/spaceing.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';
import 'package:flutter_complete_project/featurs/onBoarding/ui/widgets/doc_logo_and_name.dart';
import 'package:flutter_complete_project/featurs/onBoarding/ui/widgets/doctor_image_and_text.dart';
import 'package:flutter_complete_project/featurs/onBoarding/ui/widgets/get_started_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onboardingscreen extends StatelessWidget {
  const Onboardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
              child: Column(
                children: [
                  const DocLogoAndName(),
                  verticalSpace(30),
                  const DoctorImageAndText(),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Column(
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                          style: TextStyles.font13grayRegular,
                        ),
                        verticalSpace(20),

                        GetStartedButton(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
