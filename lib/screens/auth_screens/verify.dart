import 'package:dawaiwala/screens/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class VerifyOtp extends StatelessWidget {
  const VerifyOtp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
    child:
      SlidingUpPanel(
          panel: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.05,
                    ),
                    child: Text("Enter OTP",
                      style: TextStyle(color: Colors.black, fontSize: 40),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.05,
                    ),
                    child: Text("OTP has been sent to",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),

//Add Phone Number from controller

                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.015,
                        right: 20,
                        left: 20
                    ),
                    child:
                    TextFormField(
                      // controller: cnfPasswordController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.45,
                    ),
                    child:
                    ElevatedButton.icon(
                      onPressed: () => verify(context),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff1870B5),
                          padding: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: MediaQuery.of(context).size.width * 0.35,
                          ),
                          shape: StadiumBorder()),

                      label: Text("Continue"),
                      icon: Icon(Icons.arrow_forward),
                      // child: const Text("Continue"),
                    ),
                  ),
                ],
              ),
          ),
          body:Align(
          alignment: Alignment.topCenter,
          child: Padding(
          padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.05,
          ),
          child: Image.asset('assets/icons/davaivala_logo.png',
          height: 80,)
          ),
          ),

          maxHeight: 700,
          minHeight: 700,
          borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
    ),
    ),
    ),



    );
  }

  verify(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => Dashboard())
    );
  }
}
