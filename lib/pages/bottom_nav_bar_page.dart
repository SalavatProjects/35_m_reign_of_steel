import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:proj_35_m_reign_of_steel/pages/armory_page.dart';
import 'package:proj_35_m_reign_of_steel/ui_kit/ui_kit.dart';
import 'shop_page.dart';

class BottomNavBarPage extends StatefulWidget {
  int? currentPage;

  BottomNavBarPage({
    super.key,
    this.currentPage
  });

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int _currentPage = 1;

  final List<Widget> _pages = [
    Placeholder(),
    ShopPage(),
    ArmoryPage(),
  ];

  @override
  void initState() {
    super.initState();
    if (widget.currentPage != null) {
      _currentPage = widget.currentPage!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            color: AppColors.kBackground,
            image: DecorationImage(
                image: AssetImage('assets/images/Noise.png'),
                fit: BoxFit.fill,
                opacity: 0.1
            )
        ),
        child: Column(
          children: [
            _pages[_currentPage],
            const Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.w),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 75.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/bottom nav bar.png'),)
                  ),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 35.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _BottomNavBarItem(
                              iconPath: 'assets/icons/game.svg',
                              text: 'Game',
                              onPressed: () {
                                setState(() {
                                  _currentPage = 0;
                                });
                              },
                            isSelected: _currentPage == 0,
                          ),
                          _BottomNavBarItem(
                            iconPath: 'assets/icons/shop.svg',
                            text: 'Shop',
                            onPressed: () {
                              setState(() {
                                _currentPage = 1;
                              });
                            },
                            isSelected: _currentPage == 1,
                          ),
                          _BottomNavBarItem(
                            iconPath: 'assets/icons/Treasure Box.svg',
                            text: 'Armory',
                            onPressed: () {
                              setState(() {
                                _currentPage = 2;
                              });
                            },
                            isSelected: _currentPage == 2,
                          ),
                        ],
                      ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _BottomNavBarItem extends StatelessWidget {
  String iconPath;
  String text;
  void Function() onPressed;
  bool isSelected;

  _BottomNavBarItem({
    super.key,
    required this.iconPath,
    required this.text,
    required this.onPressed,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        onPressed: onPressed,
        child: SizedBox(
          width: 70,
          height: 70,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(iconPath, colorFilter: ColorFilter.mode(
                  isSelected ? AppColors.kBlack : AppColors.kWhite, BlendMode.srcIn),),
              Text(text, style: AppStyles.kExo2WhiteW600(18.sp).copyWith(color: isSelected ? AppColors.kBlack : AppColors.kWhite),)
            ],
          ),
        ));
  }
}
