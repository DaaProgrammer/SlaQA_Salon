import 'package:flutter/material.dart';
import 'package:slaqa/widgets/custom_button.dart';
import 'package:slaqa/widgets/custom_textfield.dart';
import 'package:slaqa/constants/globals.dart';
import 'package:slaqa/screens/onboard_screens/register.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/LoginScreen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // final _signInFormKey = GlobalKey<FormState>();
  // final AuthService authService = AuthService();

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
        title:
            const Text('Login', style: TextStyle(fontWeight: FontWeight.bold)),
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
              Center(
                child: Image.asset("assets/login.png"),
              ),
              Container(
                child: Column(
                  children: [
                    const SizedBox(height: 30),
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
                    Container(
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: Text('Forgot Password?',
                                style: TextStyle(
                                    color: GlobalVariables.primaryColor,
                                    fontSize: 14),
                                textAlign: TextAlign.right))),
                    const SizedBox(height: 50),
                    CustomButton(
                        text: 'LOGIN',
                        buttonColor: GlobalVariables.primaryColor,
                        onTap: () {}),
                    const SizedBox(height: 50),
                    Container(
                        child: Align(
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: (() {
                                Navigator.pushNamedAndRemoveUntil(context,
                                    RegisterScreen.routeName, (route) => true);
                              }),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Don't have an account? ",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                      textAlign: TextAlign.center),
                                  Text("Create Account",
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
