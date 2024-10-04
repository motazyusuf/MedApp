import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:med_app/core/theme/text_styles.dart';
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
              TitleAndLogo(),
              SizedBox(
                height: 70.h,
              ),
              Stack(
                children: [
                  // Background Logo
                  SvgPicture.asset("assets/SVGs/backgroundLogoSVG.svg"),

                  // Doctor Image & Fade
                  Container(
                      foregroundDecoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.white, Colors.white.withOpacity(0.0)],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          stops: const [0.11, 0.4],
                        ),
                      ),
                      child:
                          Image.asset("assets/images/onboarding_doctor.png")),

                  // Text
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
