import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:proj_35_m_reign_of_steel/gen/gen.dart';
import 'package:proj_35_m_reign_of_steel/ui_kit/ui_kit.dart';

class BuySellBtn extends StatelessWidget {
  String text;
  void Function() onPressed;

  BuySellBtn({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Container(
        width: 220.w,
        height: 40.w,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(Assets.images.buySell.path))
        ),
        child: Center(child: Text(text.toUpperCase(), style: AppStyles.kExo2OrangeW700(18).copyWith(color: AppColors.kBlack),)),
      ),
    );
  }
}
