import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:med_app/core/theme/text_styles.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Logo
        SvgPicture.asset("assets/SVGs/backgroundLogoSVG.svg"),

        // Doctor Image & Fade
        Container(
            height: 500.h,
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Colors.white.withOpacity(0.0)],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: const [0.16, 0.4],
              ),
            ),
            child: Image.asset(
              "assets/images/onboarding_doctor.png",
              fit: BoxFit.cover,
            )),

        // Text in Blue
        Positioned(
          bottom: 20.h,
          left: 65.w,
          child: Text(
            "Best Doctor\nAppointment App",
            style: MyTextStyles.fontInter32BlueBold.copyWith(height: 1.4),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
