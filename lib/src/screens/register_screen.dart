import 'package:auth_app/src/utils/constant.dart';
import 'package:auth_app/src/utils/text_style.dart';
import 'package:auth_app/src/screens/signin_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
   const RegisterScreen ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/cup-coffee.jpg"),
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20 , ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(children: [
                            TextSpan(
                              text: "SIGN IN \n\t",
                              style: headline,
                            ),
                            TextSpan(
                              text: "with your credentials",
                              style: headline2,
                            ),
                          ]),
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  const Padding(
                    padding:  EdgeInsets.only(bottom: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 16),
                          child: Icon(
                            Icons.face,
                            color: whiteText,
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "full name",
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                 const  Padding(
                    padding:  EdgeInsets.only(bottom: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 16),
                          child: Icon(
                            Icons.alternate_email,
                            color: whiteText,
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "email address",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding:  EdgeInsets.only(bottom: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding:  EdgeInsets.only(right: 16),
                          child: Icon(
                            Icons.lock,
                            color: whiteText,
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Password",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(10),
                          
                          child:  FittedBox(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return const SignInScreen();
                                    },
                                  ));
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 26, vertical: 16),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25.0),
                                    color: Colors.black,
                                  ),
                                  child: const Row(
                                    children: [
                                      Text(
                                        "SIGN-IN",
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
                        ),
                        const SizedBox(width: 10),
                       
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.all(10),
                            

                          child : FittedBox(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return const RegisterScreen();
                                    },
                                  ));
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 26, vertical: 16),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25.0),
                                    color: Colors.black,
                                  ),
                                  child: const Row(
                                    children: [
                                      Text(
                                        "REGISTER",
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
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
