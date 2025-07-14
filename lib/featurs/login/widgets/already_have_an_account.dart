import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theming/styles.dart'
    show TextStyles;

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: " Already have an account yet? ",
              style: TextStyles.font14DarkBlue500weight,
            ),
            TextSpan(text: " Sign Up", style: TextStyles.font14Blue600weight),
          ],
        ),
      ),
    );
  }
}
