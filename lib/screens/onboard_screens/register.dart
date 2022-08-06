import 'package:flutter/material.dart';
import 'package:slaqa/widgets/custom_button.dart';
import 'package:slaqa/widgets/custom_textfield.dart';
import 'package:slaqa/constants/globals.dart';
import 'package:slaqa/screens/onboard_screens/login.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = '/RegisterScreen';
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final disable_btn = '';
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text('Create Account',
            style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 5.0, 0),
            child: Image.asset('assets/logo.jpg', width: 40.0, height: 40.0),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Column(
                children: [
                  Center(
                    child: Image.asset("assets/signin.png"),
                  ),
                  // const Text('Signup with one of the following options',
                  //     style: TextStyle(color: Colors.white, fontSize: 16.0)),
                  // const SizedBox(height: 20.0),
                  // Row(
                  //   children: [
                  //     Expanded(
                  //         child: Container(
                  //       decoration: BoxDecoration(
                  //         border: Border.all(color: Colors.white),
                  //         color: GlobalVariables.textFieldBgColor,
                  //         borderRadius: BorderRadius.circular(10.0),
                  //       ),
                  //       child: Center(
                  //         child: Padding(
                  //           padding: const EdgeInsets.all(8.0),
                  //           child: Image.asset('assets/google-brands.png',
                  //               width: 40.0, height: 40.0),
                  //         ),
                  //       ),
                  //     )),
                  //     const SizedBox(width: 15.0),
                  //     Expanded(
                  //         child: Container(
                  //       decoration: BoxDecoration(
                  //           border: Border.all(color: Colors.white),
                  //           color: GlobalVariables.textFieldBgColor,
                  //           borderRadius: BorderRadius.circular(10.0)),
                  //       child: Center(
                  //         child: Padding(
                  //           padding: const EdgeInsets.all(8.0),
                  //           child: Image.asset('assets/facebook-brands.png',
                  //               width: 40.0, height: 40.0),
                  //         ),
                  //       ),
                  //     )),
                  //   ],
                  // )
                ],
              ),
              const SizedBox(height: 20.0),
              Container(
                child: Column(
                  children: [
                    CustomTextField(
                      controller: _nameController,
                      hintText: 'Name',
                    ),
                    const SizedBox(height: 20.0),
                    CustomTextField(
                      controller: _emailController,
                      hintText: 'Email',
                    ),
                    const SizedBox(height: 20.0),
                    CustomPasswordTextField(
                      controller: _passwordController,
                      hintText: 'Password',
                    ),
                    const SizedBox(height: 30),
                    CustomButton(
                        text: 'CREATE ACCOUNT',
                        buttonColor: GlobalVariables.primaryColor,
                        onTap: () {}),
                    const SizedBox(height: 50),
                    Container(
                        child: Align(
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: (() {
                                Navigator.pushNamedAndRemoveUntil(context,
                                    LoginScreen.routeName, (route) => true);
                              }),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Already have an account? ",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                      textAlign: TextAlign.center),
                                  Text("Login",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center),
                                ],
                              ),
                            ))),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
