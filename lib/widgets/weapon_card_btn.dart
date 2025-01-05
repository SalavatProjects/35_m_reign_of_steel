import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:proj_35_m_reign_of_steel/ui_kit/ui_kit.dart';
import 'package:proj_35_m_reign_of_steel/gen/gen.dart';

class WeaponCardBtn extends StatelessWidget {
  String imagePath;
  String name;
  String price;
  bool isBought;
  void Function() onPressed;

  WeaponCardBtn({
    super.key,
    required this.imagePath,
    required this.name,
    required this.price,
    this.isBought = false,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.w),
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 144.w,
          padding: EdgeInsets.all(10.w),
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(Assets.images.card.path))
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 38.w,
                  height: 38.w,
                  padding: EdgeInsets.all(6.w),
                  child: Image.asset(isBought ? Assets.images.ammoGold.path : Assets.images.ammoSilver.path),
                ),
              ),
              Align(
                alignment: Alignment.center,
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
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                    height: 100.w,
                    child: Image.asset(imagePath)),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(name, style: AppStyles.kExo2OrangeW700(14.sp),),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  width: 100.w,
                  height: 20.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(price, style: AppStyles.kExo2YellowW600(14.sp),),
                      SizedBox(width: 5.w,),
                      Image.asset(Assets.images.moneySign.path)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
