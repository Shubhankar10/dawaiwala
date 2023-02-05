import 'package:dawaiwala/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchScreen extends StatelessWidget {
  final String? title;
  const SearchScreen({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    var filtered = [
      ["Medicine-1", "manufactured by - 1", "Rs.100"],
      ["Medicine-2", "manufactured by - 2", "Rs.140"],
      ["Medicine-3", "manufactured by - 3", "Rs.380"],
      ["Medicine-4", "manufactured by - 4", "Rs.100"],
      ["Medicine-5", "manufactured by - 5", "Rs.140"]
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: title!.text.color(primaryDarkColor).make(),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: filtered.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              filtered[index][0],
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              filtered[index][2],
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ),
                          ],
                        ),
                        10.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              filtered[index][1],
                            ),
                            ElevatedButton(
                              onPressed: () => {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: primaryDarkColor,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 15),
                                  shape: const StadiumBorder()),
                              child: const Text("Add to Cart"),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
