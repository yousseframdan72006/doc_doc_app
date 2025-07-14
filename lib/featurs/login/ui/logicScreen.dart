import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_complete_project/core/helpers/spaceing.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';
import 'package:flutter_complete_project/core/widgets/app_text_button.dart';
import 'package:flutter_complete_project/featurs/login/widgets/already_have_an_account.dart';
import 'package:flutter_complete_project/featurs/login/widgets/app_text_from_field.dart';
import 'package:flutter_complete_project/featurs/login/widgets/terms_and_Conditions.dart'
    show TermsAndConditions;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Logicscreen extends StatefulWidget {
  const Logicscreen({super.key});

  @override
  State<Logicscreen> createState() => _LogicscreenState();
}

class _LogicscreenState extends State<Logicscreen> {
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(30),
                Text("Welcome Back", style: TextStyles.font24BlueBold),
                verticalSpace(8),
                Text(
                  "We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.",
                  style: TextStyles.font14gray400weight,
                ),
                verticalSpace(25),
                AppTextFromField(hintText: "Email"),
                verticalSpace(16),
                AppTextFromField(
                  hintText: "Password",
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        isObscureText = !isObscureText;
                      });
                    },
                    child: Icon(
                      isObscureText ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                  obscureText: isObscureText,
                ),
                verticalSpace(40),
                AppTextButton(
                  buttonText: "Login",
                  onPressed: () {},
                  textStyle: TextStyles.font16WhiteSemiBold,
                ),
                verticalSpace(30),
                TermsAndConditions(),
                verticalSpace(60),
                AlreadyHaveAnAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
