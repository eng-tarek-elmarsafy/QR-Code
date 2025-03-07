import 'package:flutter/widgets.dart';

class OnbordingText extends StatelessWidget {
  const OnbordingText({super.key});

  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator GetstartedWidget - TEXT
    return Column(
      children: [
        Text(
          'Get Started',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color.fromRGBO(51, 51, 51, 1),
              fontFamily: 'Itim',
              fontSize: 42,
              letterSpacing:
                  0 /*percentages not used in flutter. defaulting to zero*/,
              fontWeight: FontWeight.normal,
              height: 1),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Text(
            'Go and enjoy our features for free and make your life easy with us.',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(62, 62, 66, 0.6000000238418579),
                fontFamily: 'Itim',
                fontSize: 17,
                letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1),
          ),
        ),
      ],
    );
  }
}
