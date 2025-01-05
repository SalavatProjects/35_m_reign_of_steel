import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:proj_35_m_reign_of_steel/ui_kit/ui_kit.dart';

class MenuBtn extends StatelessWidget {
  void Function() onPressed;
  String text;

  MenuBtn({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.w),
      child: CupertinoButton(
          padding: EdgeInsets.zero, onPressed: onPressed,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 45.w,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/menu card.png'))
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 20.w,),
                      Text(text, style: AppStyles.kExo2BlackW900(20),)
                    ],
                  ),
                  SvgPicture.asset('assets/icons/arrow right.svg')
                ],
              ),
            ),
          )
      ),
    );
  }
}
