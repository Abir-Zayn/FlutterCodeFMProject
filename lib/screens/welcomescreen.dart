import 'package:flutter/material.dart';
import 'package:usercreationpage/screens/signinpage.dart';
import 'package:usercreationpage/screens/signuppage.dart';
import 'package:usercreationpage/widgets/custom_scaffold.dart';
import 'package:usercreationpage/widgets/welcome_button.dart';

class welcomeScreen extends StatelessWidget {
  const welcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //returning customwidget
    return customScaffold(
      //creating an custom widget which may have different
      //types of widget based on requirement. Works like function Parameter.
      child: Column(
        children: [
          Flexible(
              flex: 5,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 40.0,
                ),
                child: Center(
                    child: RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(children: [
                          TextSpan(
                              text: "Welcome to CodeFM\n",
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              )),
                          TextSpan(
                              text:
                                  "One stop solution to buy your favourite Goodies at cheaper rate",
                              style: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white
                              ))
                        ]))),
              )),
          const Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  //custom button
                  //Taking upto whole space
                  Expanded(
                    child: welcome_button(
                      buttonText: "Login ",
                      onTapLocation: SignIn(),
                      chooseColor: Color.fromARGB(14, 29, 27, 27),
                      buttonTextColor: Color.fromARGB(255, 22, 231, 22),
                    ),
                  ),
                  Expanded(
                    child: welcome_button(
                      buttonText: "Sign Up ",
                      onTapLocation: SignUp(),
                      chooseColor: Colors.white,
                      buttonTextColor: Colors.blue,
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
