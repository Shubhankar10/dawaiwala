import 'package:dawaiwala/consts/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SafeArea(
          child: Column(
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.all(10),
            height: 200,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [primaryColor, primaryDarkColor],
                )),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    //Navigator.of(context).pop();
                  },
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 80),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 2, color: Colors.white)),
                        child: const Icon(
                          Icons.account_circle,
                          color: Colors.white,
                        ),
                      )),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(80.0),
                    ),
                    suffixIcon: const Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(10),
            height: 200,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5.0,
                  )
                ]),
            child: Column(
              children: [
                const Text(
                  "Order Medicines\n From Nearby Chemists",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  overflow: TextOverflow.clip,
                ),
                Row(
                  children: [
                    const Icon(Icons.shopping_bag),
                    const Text("Superfast Delivery",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold))
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () => {
                        // orderNow(),
                        // Navigator.of(context).push(
                        //     MaterialPageRoute(builder: (context) => OrderScreen()))
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: primaryDarkColor,
                          padding: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 25,
                          ),
                          shape: StadiumBorder()),
                      child: const Text("Order Now",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
