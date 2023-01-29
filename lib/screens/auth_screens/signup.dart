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
            Text('SignUp'),
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
                      child: const Text("Sign In"))
                ],
              ),
            ),
          ],
          ),
        ),
    );
  }
}