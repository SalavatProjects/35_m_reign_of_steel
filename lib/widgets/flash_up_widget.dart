import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:proj_35_m_reign_of_steel/ui_kit/ui_kit.dart';
import 'package:proj_35_m_reign_of_steel/gen/gen.dart';

class FlashUpWidget extends StatelessWidget {
  const FlashUpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.w,
      height: 60,
      child: Stack(
        children: [
          Align(
            alignment: const Alignment(0.0, 0.0),
            child: Image.asset(Assets.images.ellipse.path),
          ),
          Align(
            alignment: const Alignment(0.0, 15.0),
            child: Container(
              width: 50.w,
              height: 50.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: AppColors.kOrange,
                      blurRadius: 58,
                      offset: Offset(0, 0)
                  )
                ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}
