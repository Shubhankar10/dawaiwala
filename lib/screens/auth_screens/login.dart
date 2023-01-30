import 'package:dawaiwala/screens/auth_screens/signup.dart';
import 'package:dawaiwala/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../../main.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff1870B5),
                Color(0xff1870B5),
                Colors.white
          ])
        ),
        child: SlidingUpPanel(
          panel: Column(children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05,
                  right: 30,
                  left: 30),
              child: const Text(
                "Welcome to DawaiWala",
                style: TextStyle(
                  fontFamily: 'SFPro',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03,
                  right: 30,
                  left: 30),
              child: Text(
                "Dawaiwala is a platform...",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.09,
                  right: 30,
                  left: 30),
              child: TextFormField(
                // controller: emailController,
                decoration: InputDecoration(
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                  labelText: "Phone Number",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.04,
                  right: 30,
                  left: 30),
              child: TextFormField(
                // controller: emailController,
                decoration: InputDecoration(
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                  labelText: "Password",
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.04,
                    right: 30,
                    left: 30),
                child: Row(
                  children: [
                    Checkbox(
                      value: this.value,
                      onChanged: (bool? value) {
                        this.value = true;
                      },
                    ),
                    Text('Agree to our terms and conditions'),
                  ],
                )),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.15,
                  right: 20,
                  left: 20),
              child: ElevatedButton(
                onPressed: () => {
                  verify(context),
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Dashboard()))
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff1870B5),
                    padding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: MediaQuery.of(context).size.width * 0.35,
                    ),
                    shape: StadiumBorder()),
                child: const Text("Verify OTP"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02,
                  right: 20,
                  left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an Account ? ",
                  ),
                  TextButton(
                      onPressed: () => {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SignUpScreen()))
                          },
                      child: const Text("Sign Up"))
                ],
              ),
            ),
          ]),
          collapsed: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
              color: Color(0xff4599dc),
            ),
            child: const Center(
              child: Text(
                "Swipe Up to Login",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          body: Center(
            child:
            Align(
                alignment: Alignment.center,
                child: Image.asset('assets/icons/davaivala_logo.png')
            ),

          ),
          maxHeight: 700,
          minHeight: 100,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
      ),
    );
  }

  verify(BuildContext context) async {}
}
