import 'package:flutter/material.dart';
import 'package:med_app/core/configurations/pages_routes.dart';
import 'package:med_app/core/theme/text_styles.dart';

class GettingStartedButton extends StatelessWidget {
  const GettingStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: TextButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, PagesRoutes.loginView);
          },
          child: Text(
            "Get Started",
            style: TextStyles.fontInter16WhiteSemiBold,
          )),
    );
  }
}
