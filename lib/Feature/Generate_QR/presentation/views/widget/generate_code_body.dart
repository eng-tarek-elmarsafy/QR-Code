import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../data/constants/generate_icons_data.dart';

class GenerateQRBody extends StatelessWidget {
  const GenerateQRBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 82, 82, 82),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Generate QR',
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Color.fromRGBO(217, 217, 217, 1),
            fontFamily: 'Itim',
            fontSize: 27,
            letterSpacing: 0,
            fontWeight: FontWeight.normal,
            height: 1,
          ),
        ),
      ),
      body: CustomGridView(),
    );
  }
}

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
