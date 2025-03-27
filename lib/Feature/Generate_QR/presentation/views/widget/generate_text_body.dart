import 'package:flutter/material.dart';
import 'package:qr_code/Feature/Result/presentation/views/widget/result_bar.dart';

import '../../../../../Core/widget/backgroundapp.dart';
import 'card_generate_text.dart';

class GenerateTextBody extends StatelessWidget {
  const GenerateTextBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundApp(),
        const SafeArea(
          child: ResultBar(
            text: 'Text',
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: CardGenerateText(
            title: 'Text',
            hintText: 'Enter text',
            onSubmitted: (String value) {},
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
