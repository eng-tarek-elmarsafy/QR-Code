import 'package:flutter/material.dart';

class BackgroundApp extends StatelessWidget {
  const BackgroundApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity, // العرض المتوقع للشاشة
        height: double.infinity, // الطول المتوقع
        decoration: BoxDecoration(
          color: Color(0xFF3A3A3A), // اللون الرمادي الداكن
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Stack(
          children: [
            // الخلفية مع الدوائر والخطوط
            CustomPaint(
              size: Size(double.infinity, double.infinity),
              painter: BackgroundPainter(),
            ),
          ],
        ),
      ),
    );
  }
}

// 🎨 رسم الدوائر والخطوط الرقيقة
class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint circlePaint = Paint()
      ..color = Colors.white.withValues(alpha: 0.05) // شفافية خفيفة
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    // رسم الدوائر الكبيرة
    canvas.drawCircle(
        Offset(size.width * 0.8, size.height * 0.2), 150, circlePaint);
    canvas.drawCircle(
        Offset(size.width * 0.2, size.height * 0.8), 150, circlePaint);

    // رسم خط أفقي دقيق
    final Paint linePaint = Paint()
      ..color = Colors.white.withValues(alpha: 0.05)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.8;

    canvas.drawLine(Offset(size.width * 0.2, size.height * 0.3),
        Offset(size.width * 0.8, size.height * 0.3), linePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
