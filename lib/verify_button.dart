import 'package:flutter/material.dart';

class VerifyButton extends StatelessWidget {
  const VerifyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
          width: 150,
          height: 50,
          child: Stack(
            children: [
              CustomPaint(
                size: const Size(130,
                    50), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: RPSCustomPainter(),
              ),
              const Positioned(
                top: 10,
                left: 25,
                child: Text(
                  'Verify',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      fontFamily: 'Schyler'),
                ),
              ),
              Positioned(
                top: 0,
                right: -65,
                child: CustomPaint(
                  size: Size(90,
                      30), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: RPSCustomPainter2(),
                ),
              ),
            ],
          )),
    );
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
    path0.moveTo(0, 0);
    path0.lineTo(size.width * 0.8053333, 0);
    path0.lineTo(size.width, size.height * 0.5585000);
    path0.lineTo(size.width, size.height * 0.7355000);
    path0.lineTo(size.width * 0.9224000, size.height);
    path0.quadraticBezierTo(size.width * 0.2529000, size.height,
        size.width * 0.0297333, size.height);
    path0.cubicTo(
        size.width * 0.0113667,
        size.height * 0.9850000,
        size.width * 0.0034333,
        size.height * 0.9398000,
        0,
        size.height * 0.8999000);
    path0.quadraticBezierTo(0, size.height * 0.6749250, 0, 0);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromRGBO(85, 94, 206, 1)
      ..style = PaintingStyle.fill
      ..strokeWidth = 7.53000020980835;

    Path path0 = Path();
    path0.moveTo(0, size.height * 0.3000000);
    path0.lineTo(0, size.height * 0.5000000);
    path0.lineTo(size.width * 0.0666667, size.height * 0.7000000);
    path0.lineTo(size.width * 0.1000000, size.height * 0.7000000);
    path0.lineTo(size.width * 0.2639333, size.height * 0.2090000);
    path0.lineTo(size.width * 0.2666667, 0);
    path0.lineTo(size.width * 0.0800000, size.height * 0.5000000);
    path0.lineTo(0, size.height * 0.3000000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
