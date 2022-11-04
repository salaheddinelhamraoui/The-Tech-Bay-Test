import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            width: 160,
            height: 50,
            child: Stack(
              children: [
                CustomPaint(
                  size: const Size(170,
                      50), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: RPSCustomPainter(),
                ),
                const Positioned(
                  top: 10,
                  left: 25,
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            )));
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromRGBO(85, 94, 206, 1)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(0, size.height * 0.0010000);
    path0.lineTo(size.width * 0.8648667, 0);
    path0.lineTo(size.width, size.height * 0.4413000);
    path0.lineTo(size.width, size.height * 0.5522000);
    path0.lineTo(size.width * 0.8647667, size.height);
    path0.lineTo(size.width * 0.0333333, size.height);
    path0.lineTo(0, size.height * 0.8931000);
    path0.lineTo(0, size.height * 0.0010000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
