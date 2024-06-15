import 'package:flutter/material.dart';

void main() {
  runApp(const HomeView());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Adding MaterialApp as the root widget
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
          body: Stack(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(bottom: 300.0),
            child: Center(
                child: Image(
              image: AssetImage('assets/Kakross-logo.png'),
              width: 250,
              height: 200,
              fit: BoxFit.contain,
            )),
          ),
          ClipPath(
              clipper: CustomClipPath2(),
              child: Container(
                color: const Color(0xff80bf96),
              )),
          ClipPath(
              clipper: CustomClipPath1(),
              child: Container(
                color: const Color(0xff02802d),
              )),
        ],
      )),
    );
  }
}

class CustomClipPath1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * -0.0118430, size.height * 0.6623223);
    path_0.cubicTo(
        size.width * 0.2028283,
        size.height * 0.6654685,
        size.width * 0.1526814,
        size.height * 0.7096834,
        size.width * 0.3069537,
        size.height * 0.7111908);
    path_0.cubicTo(
        size.width * 0.4766040,
        size.height * 0.7105089,
        size.width * 0.5676296,
        size.height * 0.6810682,
        size.width * 0.7022522,
        size.height * 0.6790703);
    path_0.quadraticBezierTo(size.width * 0.8488872, size.height * 0.6803863,
        size.width * 1.0025641, size.height * 0.7424738);
    path_0.lineTo(size.width * 1.0025641, size.height * 1.0008726);
    path_0.lineTo(size.width * -0.0092541, size.height * 1.0028584);
    path_0.quadraticBezierTo(size.width * -0.0099013, size.height * 0.9162350,
        size.width * -0.0118430, size.height * 0.6623223);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class CustomClipPath2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * -0.1230769, size.height * 0.7334123);
    path_0.quadraticBezierTo(size.width * 0.1221282, size.height * 0.6542062,
        size.width * 0.2435897, size.height * 0.6540284);
    path_0.cubicTo(
        size.width * 0.3704359,
        size.height * 0.6524882,
        size.width * 0.5560256,
        size.height * 0.6848104,
        size.width * 0.6743590,
        size.height * 0.6872038);
    path_0.cubicTo(
        size.width * 0.7974359,
        size.height * 0.6852133,
        size.width * 0.8920256,
        size.height * 0.6398460,
        size.width * 1.0128205,
        size.height * 0.6398104);
    path_0.quadraticBezierTo(size.width * 1.0128205, size.height * 0.6419194,
        size.width * 1.0128205, size.height * 0.9988152);
    path_0.lineTo(size.width * -0.1025641, size.height * 1.0035545);
    path_0.lineTo(size.width * -0.1230769, size.height * 0.7334123);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
