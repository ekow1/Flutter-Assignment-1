import 'package:auth_app/src/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:auth_app/src/utils/text_style.dart';
import 'package:auth_app/src/screens/signin_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/coffe.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(60.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(children: [
                      TextSpan(
                        text: "SMOOTH COFFE \n\t",
                        style: headline,
                      ),
                      TextSpan(
                        text: "best coffe alive !",
                        style: headline2,
                      ),
                    ]),
                  )
                ],
              ),
            ),
          ),
          FittedBox(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const SignInScreen();
                  },
                ));
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 25),
                padding:
                    const EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.black,
                ),
                child: const Row(
                  children: [
                    Text(
                      "GRAB ONE NOW",
                      style: headline3,
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.arrow_forward,
                      color: whiteText,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
