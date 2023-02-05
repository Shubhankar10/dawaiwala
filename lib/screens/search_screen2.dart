import 'package:dawaiwala/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchScreen2 extends StatelessWidget {
  final String? title;
  const SearchScreen2({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: title!.text.color(primaryDarkColor).make(),
        ),
        body: FutureBuilder(
            // future: searchProducts(title),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(
                color: primaryColor,
              ),
            );
          } else if (snapshot.data!.docs.isEmpty) {
            //isEmpty
            return "No Products Found".text.makeCentered();
          } else {
            var data = snapshot.data;
            var filtered = data
                .where((element) => element['']
                    .toString()
                    .toLowerCase()
                    .contains(title!.toLowerCase()))
                .toList();
            return Expanded(
                child: ListView.builder(
              itemCount: filtered.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: ListTile(
                    title: Text(filtered[index]
                        ["title"]), // getting the data from filtered list
                  ),
                );
              },
            ));
          }
        }),
      ),
    );
  }
}
