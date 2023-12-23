import 'package:flutter/material.dart';
import 'package:usercreationpage/screens/forgetpassword.dart';
import 'package:usercreationpage/screens/signuppage.dart';
import 'package:usercreationpage/widgets/custom_scaffold.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignIn();
}

class _SignIn extends State<SignIn> {
  final _formSignKey = GlobalKey<FormState>();
  bool rememberPassword = true;

  @override
  Widget build(BuildContext context) {
    return customScaffold(
      child: Column(
        children: [
          const Expanded(
              flex: 1,
              child: SizedBox(
                height: 10,
              )),
          Expanded(
              flex: 7,
              child: Container(
                padding: const EdgeInsets.fromLTRB(25, 50, 25, 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                child: Form(
                  key: _formSignKey,
                  child: Column(
                    //Centering all element
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //SignIn page Heading
                      const Text(
                        'Sign Up Here',
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),

                      //Adding spaces
                      const SizedBox(
                        height: 40.0,
                      ),
                      //SignIn page Email decoration
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Email';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            label: const Text('Email'),
                            hintText: 'Enter Email',
                            hintStyle: const TextStyle(color: Colors.black),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))),
                      ),

                      //Adding spaces
                      const SizedBox(
                        height: 40.0,
                      ),

                      //SignIn page Password decoration
                      TextFormField(
                        obscureText: true,
                        obscuringCharacter: '#',
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              (value.length < 8)) {
                            return 'Please enter password or greater than 8 words';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            label: const Text('Password'),
                            hintText: 'Enter Password',
                            hintStyle: const TextStyle(color: Colors.black),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              //Checkbox to Save later
                              Checkbox(
                                value: rememberPassword,
                                onChanged: (bool? value) {
                                  setState(() {
                                    rememberPassword = value!;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                              const Text(
                                'Save for later',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),

                          //Forget now navigator
                          GestureDetector(
                            onTap: () {
                              // Navigate to another screen when the text is tapped
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ForgetPassword()),
                              );
                            },
                            child: const Text(
                              'Forget password?',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),

                      //Login Button
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 231, 236, 238),
                          textStyle: const TextStyle(
                            fontSize: 15,
                            fontStyle: FontStyle.normal,
                          ),
                          elevation: 5.0,
                          padding: const EdgeInsets.symmetric(
                            vertical: 15.0,
                            horizontal: 100.0,
                          ),
                        ),
                        onPressed: () {},
                        child: const Text('Sign In'),
                      ),

                      const SizedBox(
                        height: 30.0,
                      ),
                      //Horizontal line
                      Divider(color: Colors.black),

                      //It will be apply later (if require)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: IconButton(
                                onPressed: () {}, icon: const Icon(Icons.mail)),
                          ),
                          Center(
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.facebook)),
                          ),
                          Center(
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.mobile_friendly)),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 20.0,
                      ),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Center(
                            child: Text('Are you New Here? \n'),
                          ),
                          GestureDetector(
                            onTap: () {
                              // Navigate to another screen when the text is tapped
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()),
                              );
                            },
                            child: const Text(
                              'Create an Account? ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
