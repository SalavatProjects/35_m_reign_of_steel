import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:proj_35_m_reign_of_steel/bloc/gold_cubit.dart';
import 'package:proj_35_m_reign_of_steel/bloc/weapon_cubit.dart';
import 'package:proj_35_m_reign_of_steel/bloc/weapons_cubit.dart';
import 'package:proj_35_m_reign_of_steel/gen/gen.dart';
import 'package:proj_35_m_reign_of_steel/pages/buy_weapon_page.dart';
import 'package:proj_35_m_reign_of_steel/pages/sell_weapon_page.dart';
import 'package:proj_35_m_reign_of_steel/ui_kit/ui_kit.dart';
import 'package:proj_35_m_reign_of_steel/utils/constants.dart';
import 'package:proj_35_m_reign_of_steel/widgets/widgets.dart';

import '../storages/models/gold.dart';

class ShopItemsPage extends StatelessWidget {
  String weaponType;

  ShopItemsPage({
    super.key,
    required this.weaponType
  });

  @override
  Widget build(BuildContext context) {
    final List<(String type, String imagePath, String name, int price)> _weapons = AppConstants.weapons.where((e) => e.$1 == weaponType).toList();
    return Scaffold(
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
                          onTap: () => Navigator.pop(context),
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
                return Expanded(
                  child: ListView.builder(
                        itemCount: _weapons.length,
                        itemBuilder: (BuildContext context, int index) {
                          WeaponState? weaponState = weapons.where((e) => e.imagePath == _weapons[index].$2).firstOrNull;
                          return WeaponCardBtn(
                            imagePath: _weapons[index].$2,
                            name: _weapons[index].$3,
                            price: _weapons[index].$4.toString(),
                            isBought: weaponState != null ? true : false,
                            onPressed: () {
                              if (weaponState != null) {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => SellWeaponPage(weaponState: weaponState))
                                );
                              } else {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => BuyWeaponPage(
                                      type: _weapons[index].$1,
                                      imagePath: _weapons[index].$2,
                                      name: _weapons[index].$3,
                                      price: _weapons[index].$4.toString()))
                                );
                              }
                            },
                        );
                        },
                  
                    ),
                );

              },
            ),

            ],
          ),
        ),
      ),
    );
  }
}
