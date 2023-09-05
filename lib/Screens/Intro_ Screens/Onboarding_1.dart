import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:my_todo/Screens/Login%20and%20Register/Login.dart';
import 'package:my_todo/Screens/Login%20and%20Register/Register.dart';

class Onboarding_1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration=const PageDecoration(
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
        ),
      bodyTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.blue,
        backgroundColor: Colors.white,
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: IntroductionScreen(
          globalBackgroundColor: Colors.white,
          pages: [
            PageViewModel(
              title: "Manage your tasks",
              body: "You can easily manage all of yourdaily tasks in My_Todo for free",
              image: introimage("assets/images/manage your task4.png"),
            ),
            PageViewModel(
              title: "Create your daily routine",
              body: "In Uptodo you can create your personalized routine to stay productive",
              image: introimage("assets/images/manage your task 2.png"),
            ),
            PageViewModel(
              title: "Organise your tasks",
              body: "You can Organise your daily tasks by adding your tasks into separate categories",
              image: introimage("assets/images/manage your task 3.png"),
            )
          ],
          onSkip: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Register())),
          skip: Text("Skip"),
          showSkipButton: true,
          next: Text("Next"),
          onDone: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Register())),
          done: Text("Done"),
          dotsDecorator: const DotsDecorator(
              size: Size(10, 10),
              activeSize: Size(15, 15),
              activeColor: Colors.yellow,
              color: Colors.grey,
              shape: CircleBorder(
              )
          ),
        ),
      ),
    );
  }

  Widget introimage(String image) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.only(top: 150),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(
            image,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}


