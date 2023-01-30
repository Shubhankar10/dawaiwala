import 'package:dawaiwala/consts/colors.dart';
import 'package:dawaiwala/consts/images.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const sliderList = [icCoupon, icBrands, icClubpoint, icFlashDeal];

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
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
                                  border: Border.all(
                                      width: 2, color: Colors.white)),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Order Medicines\nFrom Nearby Chemists",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        overflow: TextOverflow.clip,
                      ),
                      Row(
                        children: [
                          const Icon(Icons.shopify, color: primaryDarkColor),
                          const Text("Superfast Delivery",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold))
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
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Best nearest medical stores",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                      overflow: TextOverflow.clip,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                VxSwiper.builder(
                    autoPlay: true,
                    height: 120,
                    enlargeCenterPage: true,
                    aspectRatio: 16 / 9,
                    itemCount: sliderList.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        sliderList[index],
                        fit: BoxFit.fill,
                      )
                          .box
                          .rounded
                          .clip(Clip.antiAlias)
                          .margin(EdgeInsets.symmetric(horizontal: 8))
                          .make();
                    }),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        padding: EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5.0,
                              )
                            ]),
                        child: Row(
                          children: [
                            const Text("Records  ",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            Image.asset(
                              icBlog,
                              width: 20,
                            )
                          ],
                        )),
                    Container(
                        padding: EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5.0,
                              )
                            ]),
                        child: Row(
                          children: [
                            const Text("Wishlist  ",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            Image.asset(
                              icFavoriteSeller,
                              width: 20,
                            )
                          ],
                        )),
                  ],
                )
              ],
            )),
          ),
        ],
      ),
    );
  }
}
