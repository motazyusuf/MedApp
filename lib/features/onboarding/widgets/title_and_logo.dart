import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:med_app/core/theme/text_styles.dart';

class TitleAndLogo extends StatelessWidget {
  const TitleAndLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/SVGs/logoSVG.svg"),
        SizedBox(
          width: 10.w,
        ),
        Text(
          "Docdoc",
          style: TextStyles.font24w700Black,
        )
      ],
    );
  }
}
