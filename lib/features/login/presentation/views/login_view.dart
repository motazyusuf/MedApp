import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:med_app/core/theme/color_palette.dart';
import 'package:med_app/core/theme/text_styles.dart';
import 'package:med_app/core/widgets/my_text_form_field.dart';
import 'package:med_app/core/widgets/space.dart';
import 'package:med_app/features/login/presentation/widgets/sign_up_text.dart';
import 'package:med_app/features/login/presentation/widgets/terms_and_condition_text.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final formKey = GlobalKey<FormState>();
  bool isObsecure = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 70.h),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  // Top page text
                  Padding(
                    padding: EdgeInsets.only(left: 10.w, right: 10.w),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome back",
                            style: MyTextStyles.fontInter24MainBlueBold,
                          ),
                          verticalSpace(10),
                          Text(
                            "We're excited to have you back, can't wait to\nsee what you've "
                            "been up to since you last\nlogged in.",
                            style: MyTextStyles.fontInter14DarkGreyRegular,
                          ),
                          verticalSpace(30),
                        ]),
                  ),

                  // Email
                  MyTextFormField(hintText: "Email"),
                  verticalSpace(20),
                  // Password
                  MyTextFormField(
                    hintText: "Password",
                    isObsecure: isObsecure,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isObsecure = !isObsecure;
                        });
                      },
                      child: isObsecure
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                    ),
                  ),
                  verticalSpace(20),

                  // Checkbox && Forgot password
                  Row(
                    children: [
                      Expanded(
                        child: ListTileTheme(
                          horizontalTitleGap: 0,
                          child: CheckboxListTile(
                            side: BorderSide(color: ColorPalette.darkGrey),
                            contentPadding: EdgeInsets.zero,
                            controlAffinity: ListTileControlAffinity.leading,
                            title: Text(
                              "Remember me",
                              style: MyTextStyles.fontInter13DarkGreyRegular,
                            ),
                            value: isChecked,
                            onChanged: (newBool) {
                              setState(() {
                                isChecked = newBool!;
                              });
                            },
                          ),
                        ),
                      ),
                      Text(
                        "Forgot password?",
                        style: MyTextStyles.fontInter13MainBlueRegular,
                      ),
                    ],
                  ),
                  verticalSpace(10),

                  // Login button
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: MyTextStyles.fontInter16WhiteSemiBold,
                      )),
                  verticalSpace(15),
                  TermsAndConditionText(),
                  verticalSpace(20),
                  SignUpText(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
