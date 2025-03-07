import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_code/Feature/Splash/presentation/views/onbording2.dart';
import '../../../../../Core/utils/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 55),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(0, 58),
          backgroundColor: AppColor.kShadowBlack,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {
          GoRouter.of(context).push(Onbording2.id);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              'Let’s Start',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'Inter',
                fontSize: 16,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1,
              ),
            ),
            Spacer(),
            Icon(
              Icons.east,
              size: 25,
              color: AppColor.kGoldenSun,
            )
          ],
        ),
      ),
    );
  }
}
