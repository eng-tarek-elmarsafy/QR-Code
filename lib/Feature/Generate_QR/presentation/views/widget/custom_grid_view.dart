import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../data/constants/generate_icons_data.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 75, left: 42, right: 42),
      child: GridView.builder(
        itemCount: GenerateIconsData.iconList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 79,
          crossAxisSpacing: 43,
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            GoRouter.of(context).push(GenerateIconsData.iconList[index].goTo);
          },
          child: SvgPicture.asset(
            GenerateIconsData.iconList[index].icon,
          ),
        ),
      ),
    );
  }
}
