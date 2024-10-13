import 'package:flutter/material.dart';
import 'package:med_app/core/theme/text_styles.dart';

class SignUpText extends StatelessWidget {
  const SignUpText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
              text: "Not having an account yet? ",
              style: MyTextStyles.fontInter11DarkBlueSemiBold),
          TextSpan(
              text: "Sign Up", style: MyTextStyles.fontInter11MainBlueBold),
        ],
      ),
    );
  }
}
