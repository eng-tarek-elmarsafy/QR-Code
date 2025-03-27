import 'package:flutter/material.dart';

class TitleAndTextField extends StatelessWidget {
  const TitleAndTextField(
      {super.key,
      required this.title,
      required this.onSubmitted,
      required this.hintText});
  final String hintText;
  final String title;
  final Function(String value) onSubmitted;

  @override
  Widget build(BuildContext context) {
    const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(6),
      ),
    );
    const TextStyle textStyle = TextStyle(
      color: Color.fromRGBO(217, 217, 217, 0.3400000035762787),
      fontFamily: 'Itim',
      fontSize: 12,
      letterSpacing: 0,
      fontWeight: FontWeight.normal,
      height: 1,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: Color.fromRGBO(217, 217, 217, 1),
              fontFamily: 'Itim',
              fontSize: 14,
              letterSpacing: 0,
              fontWeight: FontWeight.normal,
              height: 1,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: textStyle,
              border: outlineInputBorder,
            ),
            onSubmitted: onSubmitted,
          ),
        ],
      ),
    );
  }
}
