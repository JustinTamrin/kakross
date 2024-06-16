import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'lmao',
      theme: ThemeData(),
      home: Scaffold(
          body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 100.0),
        child: Column(children: [
          const Center(
            child: Image(
              image: AssetImage('assets/Kakross-logo.png'),
              width: 300,
              height: 200,
            ),
          ),
          const Text(
            'Sign in to your Account',
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'Montserrat-ExtraBold',
                color: Color(0xff02802d)),
          ),
          const Text(
            '(Log masuk ke akaun anda)',
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'Montserrat-BoldItalic',
                color: Color(0xff02802d)),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5.0),
            child: Text(
              'Welcome back, please enter your details.',
              style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'Montserrat-Regular',
                  color: Color.fromRGBO(0, 0, 0, 50)),
            ),
          ),
          const Text(
            '(Selamat kembali, sila masukkan butiran anda.)',
            style: TextStyle(
                fontSize: 11,
                fontFamily: 'Montserrat-MediumItalic',
                color: Color.fromRGBO(0, 0, 0, 50)),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 40.0,
              top: 25.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Username ',
                  style: TextStyle(
                      fontSize: 11,
                      fontFamily: 'Montserrat-Regular',
                      color: Color.fromRGBO(0, 0, 0, 50)),
                ),
                Text(
                  '(Nama pengguna)',
                  style: TextStyle(
                      fontSize: 11,
                      fontFamily: 'Montserrat-MediumItalic',
                      color: Color.fromRGBO(0, 0, 0, 50)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 10.0, left: 25.0, right: 25.0, bottom: 25.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'username',
                  labelStyle: const TextStyle(
                      fontFamily: 'Montserrat-Regular', fontSize: 13.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 40.0,
              top: 5.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Password ',
                  style: TextStyle(
                      fontSize: 11,
                      fontFamily: 'Montserrat-Regular',
                      color: Color.fromRGBO(0, 0, 0, 50)),
                ),
                Text(
                  '(Kata laluan)',
                  style: TextStyle(
                      fontSize: 11,
                      fontFamily: 'Montserrat-MediumItalic',
                      color: Color.fromRGBO(0, 0, 0, 50)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: const TextStyle(
                      fontFamily: 'Montserrat-Regular', fontSize: 13.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
            ),
          ),
          const Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 25.0), child: TickBox()),
              Text(
                'Remember Me ',
                style: TextStyle(
                  fontSize: 10.0,
                  fontFamily: 'Montserrat-Regular',
                  color: Color(0xff02802d),
                ),
              ),
              Text('(Ingat saya)',
                  style: TextStyle(
                    fontSize: 10.0,
                    fontFamily: 'Montserrat-MediumItalic',
                    color: Color(0xff02802d),
                  )),
            ],
          ),
          Padding(
              padding:
                  const EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
              child: SizedBox(
                width: 350.0,
                height: 50.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff02802d),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Sign in',
                    style: TextStyle(color: Color(0xffFFFFFF)),
                  ),
                ),
              )
              // TextField(
              //   textAlign: TextAlign.center,
              //   decoration: InputDecoration(
              //     // Continue here
              //     hintText: 'Sign in',
              //     hintStyle: const TextStyle(
              //       color: Color(0xffFFFFFF),
              //     ),
              //     border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(10.0)),
              //     filled: true,
              //     fillColor: const Color(0xff02802d),
              //   ),
              // ),
              ),
        ]),
      )),
    );
  }
}

class TickBox extends StatefulWidget {
  const TickBox({super.key});

  @override
  State<TickBox> createState() => _TickBoxState();
}

class _TickBoxState extends State<TickBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.0),
        ),
        value: isChecked,
        onChanged: (bool? value) {
          setState(() {
            isChecked = value ?? false;
          });
        },
        activeColor: const Color(0xff02802d),
        side: const BorderSide(color: Color(0xff02802d), width: 1.5));
  }
}
