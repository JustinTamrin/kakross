import 'package:flutter/material.dart';

class PostSignInView extends StatelessWidget {
  const PostSignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 200.0),
        child: Column(
          children: [
            const Center(
                child: Image(
              image: AssetImage('assets/Success-icon.png'),
            )),
            const Text(
              'You have successfully \n logged into your account!',
              style: TextStyle(
                color: Color(0xff02802d),
                fontFamily: 'Montserrat-SemiBold',
                fontSize: 15.0,
              ),
              textAlign: TextAlign.center,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                'Welcome to Ross Education & Self \nMonitoring App where all your medical \nneeds are met!',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontFamily: 'Montserrat-Regular',
                  fontSize: 12.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: SizedBox(
                height: 50.0,
                width: 250.0,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff02802d),
                    ),
                    onPressed: () {},
                    child: const Text('Continue',
                        style: (TextStyle(color: Colors.white)))),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
