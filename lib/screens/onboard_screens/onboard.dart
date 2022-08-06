import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:slaqa/constants/globals.dart';
import 'package:slaqa/screens/onboard_screens/register.dart';

class OnboardScreen extends StatelessWidget {
  static const String routeName = '/OnboardScreen';
  OnboardScreen({Key? key}) : super(key: key);

  final List<PageViewModel> pages = [
    PageViewModel(
      image: Center(
        child: Image.asset('assets/slider1.png'),
      ),
      title: 'Discover and Book your favorite Stylist',
      body: 'Schedule your appointment as per your convenience',
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
            color: GlobalVariables.primaryColor,
            fontSize: 24,
            fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(color: Colors.white, fontSize: 16.0),
      ),
    ),
    PageViewModel(
      image: Center(
        child: Image.asset('assets/slider2.png', width: 450),
      ),
      title: 'Stay fresh, do it the \n SlaQa way',
      body: 'Look different with SlaQa freshest haircut',
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
            color: GlobalVariables.primaryColor,
            fontSize: 24,
            fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(color: Colors.white, fontSize: 16.0),
      ),
    ),
    PageViewModel(
      image: Center(
        child: Image.asset('assets/slider3.png', width: 450),
      ),
      title: 'Share your new look \n and get rewards',
      body: 'Share your SlaQa hair cut and accumulate points',
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
            color: GlobalVariables.primaryColor,
            fontSize: 24.0,
            fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(color: Colors.white, fontSize: 16.0),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
          child: Image.asset('assets/logo.jpg', width: 30.0, height: 30.0),
        ),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10.0, 0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, RegisterScreen.routeName, (route) => true);
                  },
                  child: const Text('Skip',
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 25.0),
          child: Column(
            children: [
              const SizedBox(height: 150.0),
              Expanded(
                child: IntroductionScreen(
                  globalBackgroundColor: Colors.transparent,
                  pages: pages,
                  dotsDecorator: DotsDecorator(
                    size: const Size(15, 15),
                    color: Colors.white,
                    activeSize: const Size(22, 10),
                    activeColor: GlobalVariables.primaryColor,
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                  ),
                  done: Expanded(
                    child: Container(
                      // padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: GlobalVariables.primaryColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.8),
                            spreadRadius: 0,
                            blurRadius: 1,
                            offset:
                                Offset(-4, -4), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: GlobalVariables.primaryColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.8),
                                    spreadRadius: 0,
                                    blurRadius: 1,
                                    offset: Offset(
                                        -4, -4), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Text('Next',
                                          style: TextStyle(
                                              color: GlobalVariables
                                                  .backgroundColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18.0)),
                                      const Icon(Icons.arrow_forward,
                                          color:
                                              GlobalVariables.backgroundColor),
                                    ]),
                              ),
                            ),
                          ]),
                    ),
                  ),
                  showSkipButton: false,
                  skip: const Text('Skip', style: TextStyle(fontSize: 20)),
                  showNextButton: true,
                  next: Container(
                    decoration: BoxDecoration(
                      color: GlobalVariables.primaryColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.8),
                          spreadRadius: 0,
                          blurRadius: 1,
                          offset: Offset(-4, -4), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text('Next',
                                style: TextStyle(
                                    color: GlobalVariables.backgroundColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0)),
                            const Icon(Icons.arrow_forward,
                                color: GlobalVariables.backgroundColor),
                          ]),
                    ),
                  ),
                  onDone: () => onDone(context),
                  curve: Curves.bounceInOut,
                  showDoneButton: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onDone(context) async {
    Navigator.pushNamedAndRemoveUntil(
        context, RegisterScreen.routeName, (route) => true);
  }
}
