import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:user_create_login/services/firebase_auth_methods.dart';
import 'package:user_create_login/widgets/custom_scaffold.dart';
import 'package:user_create_login/screens/signinpage.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUp();
}

class _SignUp extends State<SignUp> {
  final _formSignUpKey = GlobalKey<FormState>();

  //Adding Controllers

  //Some of Controllers hasnt been initiliazed yet
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    // Dispose of the controllers when the widget is disposed
    _nameController.dispose();
    _emailController.dispose();
    _mobileController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void signUpUser() async {
    FirebaseAuthMethods(FirebaseAuth.instance).signUpwithEmail(
        mail: _emailController.text,
        password: _passwordController.text,
        context: context);
    //Succesfully login will return to SignIn page
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SignIn()),
    );
  }

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
                padding: const EdgeInsets.fromLTRB(25, 50, 32, 100),
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
                      height: 50.0,
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
                            height: 30.0,
                          ),

                          TextField(
                            controller: _emailController,
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
                            height: 30.0,
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
                            height: 30.0,
                          ),

                          //Enter your Password
                          TextFormField(
                            controller: _passwordController,
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
                            height: 30.0,
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
                            onPressed: signUpUser,
                            child: const Text('Submit'),
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),

                          Divider(color: Colors.black),

                          const SizedBox(
                            height: 40.0,
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
