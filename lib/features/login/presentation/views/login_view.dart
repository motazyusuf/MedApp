import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:med_app/core/theme/text_styles.dart';
import 'package:med_app/core/widgets/my_text_form_field.dart';
import 'package:med_app/core/widgets/space.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final formKey = GlobalKey<FormState>();
  bool isObsecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 70.h),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.w, right: 10.w),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome back",
                          style: MyTextStyles.fontInter24BlueBold,
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
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      MyTextFormField(hintText: "Email"),
                      verticalSpace(20),
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
                                ? Icon(Icons.visibility)
                                : Icon(Icons.visibility_off),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
