import 'package:flutter/material.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            width: 290,
            height: 50,
            child: Stack(
              children: <Widget>[
                CustomPaint(
                  size: Size(
                      300,
                      (200 * 0.2)
                          .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: RPSCustomPainter(),
                ),
                const Positioned(
                  top: 11,
                  left: 20,
                  child: Text(
                    'Downloading...',
                    style: TextStyle(
                      color: Color.fromRGBO(85, 94, 206, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 160,
                  child: CustomPaint(
                    size: const Size(40,
                        40), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                    painter: RPSCustomPainter2(),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 185,
                  child: CustomPaint(
                    size: const Size(40,
                        40), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                    painter: RPSCustomPainter2(),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 210,
                  child: CustomPaint(
                    size: const Size(40,
                        40), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                    painter: RPSCustomPainter2(),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 235,
                  child: CustomPaint(
                    size: const Size(40,
                        40), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                    painter: RPSCustomPainter2(),
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
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;

    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(size.width, 0);
    path0.lineTo(size.width, size.height * 0.7883000);
    path0.lineTo(size.width * 0.9717000, size.height);
    path0.lineTo(0, size.height);
    path0.lineTo(0, 0);
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
      ..style = PaintingStyle.stroke
      ..strokeWidth = 7;

    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(size.width * 0.5000000, size.height * 0.4400000);
    path0.lineTo(size.width * 0.5000000, size.height * 0.5500000);
    path0.lineTo(0, size.height);

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
