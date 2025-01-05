import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:proj_35_m_reign_of_steel/bloc/gold_cubit.dart';
import 'package:proj_35_m_reign_of_steel/bloc/weapon_cubit.dart';
import 'package:proj_35_m_reign_of_steel/bloc/weapons_cubit.dart';
import 'package:proj_35_m_reign_of_steel/gen/gen.dart';
import 'package:proj_35_m_reign_of_steel/pages/bottom_nav_bar_page.dart';
import 'package:proj_35_m_reign_of_steel/pages/buy_weapon_page.dart';
import 'package:proj_35_m_reign_of_steel/pages/sell_weapon_page.dart';
import 'package:proj_35_m_reign_of_steel/ui_kit/ui_kit.dart';
import 'package:proj_35_m_reign_of_steel/utils/constants.dart';
import 'package:proj_35_m_reign_of_steel/widgets/widgets.dart';

import '../storages/models/gold.dart';

class ArmoryItemsPage extends StatelessWidget {
  String weaponType;

  ArmoryItemsPage({
    super.key,
    required this.weaponType
  });

  @override
  Widget build(BuildContext context) {
    // final List<(String type, String imagePath, String name, int price)> _weapons = AppConstants.weapons.where((e) => e.$1 == weaponType).toList();
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => BottomNavBarPage(currentPage: 2,))
        );
      },
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: AppColors.kBackground,
            image: DecorationImage(
                image: AssetImage(Assets.images.noise.path),
                fit: BoxFit.fill,
                opacity: 0.1
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 30.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 176.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (context) => BottomNavBarPage(currentPage: 2,))
                            ),
                            child: Container(
                              width: 54.w,
                              height: 46.w,
                              padding: EdgeInsets.all(4.w),
                              child: Image.asset(Assets.images.back.path),
                            ),
                          ),
                          Text(weaponType, style: AppStyles.kHeadlinerWhite(30),),
                        ],
                      ),
                    ),
                    BlocSelector<WeaponsCubit, WeaponsState, GoldState?>(
                      selector: (state) => state.gold,
                      builder: (context, gold) {
                        if (gold != null) {
                          return Container(
                            width: 83,
                            height: 37,
                            padding: EdgeInsets.all(8.w),
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage(Assets.images.moneyCard.path))
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(gold.number.toString(), style: AppStyles.kExo2WhiteW500(16),),
                                Image.asset(Assets.images.moneySign.path)
                              ],
                            ),
                          );
                        } else {
                          return const SizedBox.shrink();
                        }
                      },
                    )
                  ],
                ),
                SizedBox(height: 20.w,),
                BlocSelector<WeaponsCubit, WeaponsState, List<WeaponState>>(
                  selector: (state) => state.weapons,
                  builder: (context, weapons) {
                    final List<WeaponState> currentWeapons = weapons.where((e) => e.type == weaponType).toList();
                    if (currentWeapons.isNotEmpty) {
                      return Expanded(
                        child: ListView.builder(
                          itemCount: currentWeapons.length,
                          itemBuilder: (BuildContext context, int index) {
                            return WeaponCardBtn(
                              imagePath: currentWeapons[index].imagePath,
                              name: currentWeapons[index].name,
                              price: currentWeapons[index].price.toString(),
                              isBought: true,
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => SellWeaponPage(weaponState: currentWeapons[index]))
                                );
                              },
                            );
                          },
      
                        ),
                      );
                    } else {
                      return Center(
                        child: Text('No weapons yet', style: AppStyles.kExo2OrangeW700(24.sp),),
                      );
                    }
                    
      
                  },
                ),
      
              ],
            ),
          ),
        ),
      ),
    );
  }
}
