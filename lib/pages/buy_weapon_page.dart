import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:proj_35_m_reign_of_steel/bloc/gold_cubit.dart';
import 'package:proj_35_m_reign_of_steel/bloc/weapon_cubit.dart';
import 'package:proj_35_m_reign_of_steel/pages/armory_items_page.dart';
import 'package:proj_35_m_reign_of_steel/ui_kit/ui_kit.dart';
import 'package:proj_35_m_reign_of_steel/gen/gen.dart';
import 'package:proj_35_m_reign_of_steel/widgets/widgets.dart';

import '../bloc/weapons_cubit.dart';

class BuyWeaponPage extends StatelessWidget {
  String type;
  String imagePath;
  String name;
  String price;

  BuyWeaponPage({
    super.key,
    required this.type,
    required this.imagePath,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    context.read<WeaponCubit>().updateType(type);
    context.read<WeaponCubit>().updateImagePath(imagePath);
    context.read<WeaponCubit>().updateName(name);
    context.read<WeaponCubit>().updatePrice(int.parse(price));
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
          padding: EdgeInsets.all(30.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 170.w,
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
                        Text(type, style: AppStyles.kHeadlinerDeepOrange(30),),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 25.w,
                    height: 25.w,
                    child: Image.asset(Assets.images.ammoSilver.path),
                  )
                ],
              ),
              SizedBox(height: 20.w,),
              const FlashUpWidget(),
              SizedBox(
                width: 300.w,
                height: 100.w,
                child: Image.asset(imagePath),
              ),
              const FlashDownWidget(),
              SizedBox(height: 20.w,),
              Text(name, style: AppStyles.kExo2OrangeW700(24.sp),),
              SizedBox(height: 15.w,),
              SizedBox(
                width: 100,
                height: 24,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(price, style: AppStyles.kExo2YellowW600(20.sp),),
                    SizedBox(width: 5.w,),
                    Image.asset(Assets.images.moneySign.path)
                  ],
                ),
              ),
              SizedBox(height: 48.w,),
              BlocBuilder<WeaponCubit, WeaponState>(
                builder: (context, state) {
                  return BuySellBtn(text: 'buy', onPressed: () {
                    if (context.read<WeaponsCubit>().state.gold!.number > state.price) {
                      context.read<GoldCubit>().updateNumber(context.read<WeaponsCubit>().state.gold!.number - state.price);
                      context.read<WeaponsCubit>().addWeapon(state);
                      context.read<WeaponsCubit>().updateGold(context.read<GoldCubit>().state);
                      context.read<WeaponCubit>().clearData();
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ArmoryItemsPage(weaponType: type)));
                    }
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
