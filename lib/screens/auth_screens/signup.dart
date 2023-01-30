import 'package:flutter/material.dart';

import 'login.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.05,
              ),
              child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset('assets/icons/davaivala_logo.png',
                  width: 150,)
              ),
            ),

            Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.05,
            ),
            child: Text("Sign Up",
              style: TextStyle(color: Colors.black, fontSize: 40),
            ),
          ),


            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03,
                  right: 30,
                  left: 30
              ),
              child:
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                  labelText: "Email",
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.015,
                  right: 30,
                  left: 30
              ),
              child:
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                  labelText: "Name",
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.015,
                  right: 30,
                  left: 30
              ),
              child:
              TextField(
                // controller: aliasController,
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                  labelText: "Phone Number",
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.015,
                  right: 30,
                  left: 30
              ),
              child:
              TextField(
                // controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                  labelText: "Password",
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.015,
                  right: 30,
                  left: 30
              ),
              child:
              TextFormField(
                // controller: cnfPasswordController,
                obscureText: true,
                decoration: InputDecoration(
                    border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                  labelText: "Confirm Password",
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.035,
              ),
              child:
              ElevatedButton(
                onPressed: () => signup(context),
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
                top: 0,
                bottom: 0,
              ),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an Account ? "),
                  TextButton(
                      onPressed: () => {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginScreen()))
                      },
                      child: const Text("Log In"))
                ],
              ),
            ),
          ],
          ),
        ),
    );
  }

  signup(BuildContext context) {}
}