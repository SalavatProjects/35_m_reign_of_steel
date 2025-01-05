import 'package:flutter/material.dart';
import 'package:proj_35_m_reign_of_steel/bloc/weapons_cubit.dart';
import 'package:proj_35_m_reign_of_steel/pages/bottom_nav_bar_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proj_35_m_reign_of_steel/storages/hive.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bloc/gold_cubit.dart';
import 'bloc/weapon_cubit.dart';

void main() async {
  await AppHiveDatabase.init();
  runApp(MultiBlocProvider(
      providers: [
        BlocProvider<WeaponsCubit>(
            create: (BuildContext context) => WeaponsCubit()),
        BlocProvider<WeaponCubit>(
            create: (BuildContext context) => WeaponCubit()),
        BlocProvider<GoldCubit>(
            create: (BuildContext context) => GoldCubit()),
      ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    context.read<WeaponsCubit>().getWeapons();
    context.read<WeaponsCubit>().getGold();
    return ScreenUtilInit(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: BottomNavBarPage(),
      ),
    );
  }
}
