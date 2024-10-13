import 'package:flutter/material.dart';
import 'package:med_app/core/theme/text_styles.dart';

class TermsAndConditionText extends StatelessWidget {
  const TermsAndConditionText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
              text: "By logging, you agree to our ",
              style: MyTextStyles.fontInter11DarkGreyRegular),
          TextSpan(
              text: "Terms & Conditions ",
              style: MyTextStyles.fontInter11DarkBlueSemiBold),
          TextSpan(text: "and", style: MyTextStyles.fontInter11DarkGreyRegular),
          TextSpan(
              text: "\n PrivacyPolicy.",
              style: MyTextStyles.fontInter11DarkBlueSemiBold
                  .copyWith(height: 1.5)),
        ],
      ),
    );
  }
}
