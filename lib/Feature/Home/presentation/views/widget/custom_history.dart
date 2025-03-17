import 'package:flutter/material.dart';

class CustomHistory extends StatelessWidget {
  const CustomHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.history,
            size: 30,
            color: Colors.white,
          ),
          const Text(
            'History',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Itim',
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

