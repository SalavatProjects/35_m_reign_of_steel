import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:proj_35_m_reign_of_steel/ui_kit/ui_kit.dart';

class FlashDownWidget extends StatelessWidget {
  const FlashDownWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.w,
      height: 60.w,
      child: Stack(
        children: [
          Align(
            alignment: const Alignment(0.0, 2.2),
            child: Image.asset('assets/images/Ellipse.png'),
          ),
          Align(
            alignment: const Alignment(0.0, 1.0),
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
