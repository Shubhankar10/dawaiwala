import 'package:flutter/material.dart';

import '../../consts/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(

          padding: const EdgeInsets.all(16),
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,

          child: Column(
            children: [

              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03,
                  bottom: MediaQuery.of(context).size.height * 0.01,
                ),
                child: Text("Profile",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),

              Container(
                alignment: Alignment.bottomCenter,
                padding: const EdgeInsets.all(9),
                height: 200,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [Color(0xff66D731) , Color(0xff01A1B9)],
                    )),
                child: Row(
                  children: [
                    Icon(
                      Icons.account_circle_sharp,
                      color: Colors.black,
                      size: 100,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.05,
                            left: 40,
                          ),
                          child: Text("Muskan Singh",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.01,
                            left: 40,
                          ),
                          child:
                          Text("anni@gmail.com"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.01,
                            left: 40,
                          ),
                          child:

                          Text("Registerd since Dec 2023"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03,
                  left: 40,
                ),
                child:
                Row(
                  children: [
                    Icon(Icons.verified_user, color: primaryDarkColor),
                    SizedBox(width: 20,),
                    Text("My Orders",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03,
                  left: 40,
                ),
                child:
                Row(
                  children: [
                    Icon(Icons.verified_user, color: primaryDarkColor),
                    SizedBox(width: 20,),
                    Text("My Orders",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03,
                  left: 40,
                ),
                child:
                Row(
                  children: [
                    Icon(Icons.verified_user, color: primaryDarkColor),
                    SizedBox(width: 20,),
                    Text("My Wishlist",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03,
                  left: 40,
                ),
                child:
                Row(
                  children: [
                    Icon(Icons.verified_user, color: primaryDarkColor),
                    SizedBox(width: 20,),
                    Text("History",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03,
                  left: 40,
                ),
                child:
                Row(
                  children: [
                    Icon(Icons.verified_user, color: primaryDarkColor),
                    SizedBox(width: 20,),
                    Text("My Records",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03,
                  left: 40,
                ),
                child:
                Row(
                  children: [
                    Icon(Icons.verified_user, color: primaryDarkColor),
                    SizedBox(width: 20,),
                    Text("Doctor Consultation",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03,
                  left: 40,
                ),
                child:
                Row(
                  children: [
                    Icon(Icons.verified_user, color: primaryDarkColor),
                    SizedBox(width: 20,),
                    Text("Payment Methods",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03,
                  left: 40,
                ),
                child:
                Row(
                  children: [
                    Icon(Icons.verified_user, color: primaryDarkColor),
                    SizedBox(width: 20,),
                    Text("Your Addresses",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03,
                  left: 40,
                ),
                child:
                Row(
                  children: [
                    Icon(Icons.verified_user, color: primaryDarkColor),
                    SizedBox(width: 20,),
                    Text("Traking",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03,
                  left: 40,
                ),
                child:
                Row(
                  children: [
                    Icon(Icons.verified_user, color: primaryDarkColor),
                    SizedBox(width: 20,),
                    Text("Invite Friends",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )

    );
  }
}
