import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/utils/colors.dart';

class ResultBar extends StatelessWidget {
  final String text;
  const ResultBar({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 24, right: 24),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: AppColor.kShadowBlack,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 3.5),
              child: IconButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 24,
                  color: AppColor.kGoldenSun,
                ),
              ),
            ),
          )
          // Figma Flutter Generator ResultWidget - TEXT
          ,
          SizedBox(
            width: 25,
          ),
          Text(
            text,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Color.fromRGBO(217, 217, 217, 1),
              fontFamily: 'Itim',
              fontSize: 27,
              letterSpacing: 0,
            ),
          )
        ],
      ),
    );
  }
}
