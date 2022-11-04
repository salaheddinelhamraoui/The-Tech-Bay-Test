import 'package:flutter/material.dart';

class GoButton extends StatelessWidget {
  const GoButton({super.key});

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
                  size: Size(300,
                      40.toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: RPSCustomPainter(),
                ),
                const Positioned(
                  top: 10,
                  left: 20,
                  child: Text(
                    'The Word',
                    style: TextStyle(
                      color: Color.fromRGBO(85, 94, 206, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
                Positioned(
                  top: 2,
                  right: 0,
                  child: CustomPaint(
                    size: Size(120,
                        36), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                    painter: RPSCustomPainter2(),
                  ),
                ),
                const Positioned(
                  top: 10,
                  right: 50,
                  child: Text(
                    'Go',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w600,
                      fontSize: 19,
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
      ..style = PaintingStyle.fill
      ..strokeWidth = 7.53000020980835;

    Path path0 = Path();
    path0.moveTo(size.width * 0.2580000, 0);
    path0.lineTo(0, size.height * 0.5140000);
    path0.lineTo(0, size.height);
    path0.lineTo(size.width * 0.8106667, size.height);
    path0.lineTo(size.width, size.height * 0.4300000);
    path0.lineTo(size.width, 0);
    path0.lineTo(size.width * 0.2580000, 0);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
