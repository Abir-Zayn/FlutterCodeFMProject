import 'package:flutter/material.dart';
import 'package:usercreationpage/screens/signinpage.dart';
import 'package:usercreationpage/widgets/custom_scaffold.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUp();
}

class _SignUp extends State<SignUp> {
  final _formSignUpKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return customScaffold(
      child: Column(
        children: [
          const Expanded(
            flex: 0,
            child: SizedBox(
              height: 10,
            ),
          ),
          Expanded(
            flex: 9,
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.fromLTRB(25, 50, 32, 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Welcome Here & Well Wishes',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    // Sign Up Form
                    Form(
                      key: _formSignUpKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // ... (Your other form fields)
                          TextField(
                            decoration: InputDecoration(
                                label: const Text('Name'),
                                hintText: 'Enter Your Name',
                                hintStyle: const TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black))),
                          ),

                          const SizedBox(
                            height: 15.0,
                          ),

                          TextField(
                            decoration: InputDecoration(
                                label: const Text('Email '),
                                hintText: 'Enter Your Email',
                                hintStyle: const TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black))),
                          ),

                          const SizedBox(
                            height: 15.0,
                          ),

                          TextField(
                            decoration: InputDecoration(
                                label: const Text('Mobile'),
                                hintText: 'Enter Your Mobile',
                                hintStyle: const TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black))),
                          ),

                          const SizedBox(
                            height: 15.0,
                          ),

                          //Enter your Password
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
                                  borderSide:
                                      const BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black))),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),

                          //Confirm your Password
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
                                label: const Text('Confirm Password'),
                                hintText: 'Confirm yourP Password',
                                hintStyle: const TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black))),
                          ),

                          const SizedBox(
                            height: 30.0,
                          ),

                          // Submit your Info
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 231, 236, 238),
                              textStyle: const TextStyle(
                                fontSize: 15,
                                fontStyle: FontStyle.normal,
                              ),
                              elevation: 5.0,
                              padding: const EdgeInsets.symmetric(
                                vertical: 15.0,
                                horizontal: 90.0,
                              ),
                            ),
                            onPressed: () {},
                            child: const Text('Submit'),
                          ),

                          Divider(color: Colors.black),

                          const SizedBox(
                            height: 20.0,
                          ),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Center(
                                child: Text('Already Have an Account? \n'),
                              ),
                              GestureDetector(
                                onTap: () {
                                  // Navigate to another screen when the text is tapped
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignIn()),
                                  );
                                },
                                child: const Text(
                                  'Login Here ',
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
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
