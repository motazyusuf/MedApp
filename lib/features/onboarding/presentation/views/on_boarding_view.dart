import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:med_app/core/theme/text_styles.dart';
import 'package:med_app/features/onboarding/presentation/widgets/doctor_image_and_text.dart';
import 'package:med_app/features/onboarding/presentation/widgets/title_and_logo.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.white, statusBarColor: Colors.white),
      child: SafeArea(
        child: Scaffold(
            body: Padding(
          padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
          child: Column(
            children: [
              const TitleAndLogo(),
              SizedBox(
                height: 70.h,
              ),
              const DoctorImageAndText(),
              Text(
                "Manage and "
                "schedule all"
                " of your medical"
                " appointments easily\n"
                " with Docdoc to get "
                "a new experience.",
                textAlign: TextAlign.center,
                style: TextStyles.fontInter11w400Grey,
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Get Started",
                      style: TextStyles.fontInter16w600White,
                    )),
              )
            ],
          ),
        )),
      ),
    );
  }
}
