import 'package:flutter/material.dart';
import 'package:proj_35_m_reign_of_steel/ui_kit/ui_kit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArmoryOverviewPage extends StatelessWidget {
  const ArmoryOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    // print(Assets.images.back.path);
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            color: AppColors.kBackground,
            image: DecorationImage(
                image: AssetImage('assets/images/overview background.png'),
                fit: BoxFit.fill,
            )
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    width: 54.w,
                    height: 46.w,
                    padding: EdgeInsets.all(4.w),
                    child: Image.asset('assets/images/back.png'),
                  ),
                ),
                SizedBox(height: 30.w,),
                Text('Armory Overview:'.toUpperCase(), style: AppStyles.kHeadlinerDeepOrange(30.sp),),
                SizedBox(height: 25.w,),
                Text('\u00b7  Browse your combat items and skins.', style: AppStyles.kExo2WhiteW600(16.sp),),
                Text('\u00b7  Purchased skins are marked with a gold ammo icon.', style: AppStyles.kExo2WhiteW600(16.sp),),
                Text('\u00b7  Each user can purchase only one copy of this skin.', style: AppStyles.kExo2WhiteW600(16.sp),),
                Text('\u00b7  You can sell skins to get back part of your coins.', style: AppStyles.kExo2WhiteW600(16.sp),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
