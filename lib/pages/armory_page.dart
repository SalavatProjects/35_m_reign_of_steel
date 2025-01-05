import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:proj_35_m_reign_of_steel/pages/armory_items_page.dart';
import 'package:proj_35_m_reign_of_steel/ui_kit/ui_kit.dart';
import 'package:proj_35_m_reign_of_steel/gen/gen.dart';
import 'package:proj_35_m_reign_of_steel/utils/constants.dart';
import 'package:proj_35_m_reign_of_steel/widgets/widgets.dart';
import 'shop_items_page.dart';

class ArmoryPage extends StatelessWidget {
  const ArmoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(30.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Armory'.toUpperCase(), style: AppStyles.kHeadlinerWhite(36.sp),),
                SizedBox(
                  width: 100.w,
                  height: 50.w,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 50.w,
                        child: Center(
                          child: CupertinoButton(
                              padding: EdgeInsets.zero,
                              child: SvgPicture.asset(Assets.icons.about),
                              onPressed: () {}),
                        ),
                      ),
                      SizedBox(
                        width: 50.w,
                        child: Center(
                          child: CupertinoButton(
                              padding: EdgeInsets.zero,
                              child: SvgPicture.asset(Assets.icons.settings),
                              onPressed: () {}),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 25.w,),
            ...List.generate(AppConstants.weaponsType.length,
                    (index) => MenuBtn(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ArmoryItemsPage(weaponType: AppConstants.weaponsType[index]))),
                    text: AppConstants.weaponsType[index]))
          ],
        ),
      ),
    );
  }
}
