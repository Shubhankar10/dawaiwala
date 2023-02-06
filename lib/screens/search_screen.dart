import 'dart:convert';
import 'package:dawaiwala/consts/consts.dart';
import 'package:http/http.dart' as http;
import 'package:dawaiwala/consts/colors.dart';
import 'package:dawaiwala/dataclass/medicine_details.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchScreen extends StatelessWidget {
  final String? title;
  const SearchScreen({super.key, this.title});

  Future<List<MedicineDetails>> fetchMedicine() async {
    final List result = [
      {
        "product_name": "Aciloc 150 Tablet",
        "salt": "Ranitidine (150mg)",
        "manufacturer": "Cadila Pharmaceuticals Ltd",
        "rx": "Prescription Required",
        "packaging": "strip of 30 tablets"
      },
      {
        "product_name": "Azee 500 Tablet",
        "salt": "Azithromycin (500mg)",
        "manufacturer": "Cipla Ltd",
        "rx": "Prescription Required",
        "packaging": "strip of 5 tablets"
      },
      {
        "product_name": "Amoxyclav 625 Tablet",
        "salt": "Amoxycillin  (500mg) +  Clavulanic Acid (125mg)",
        "manufacturer": "Abbott",
        "rx": "Prescription Required",
        "packaging": "strip of 10 tablets"
      },
      {
        "product_name": "Ascoril D Plus Syrup Sugar Free",
        "salt":
            "Phenylephrine (5mg) + Chlorpheniramine Maleate (2mg) + Dextromethorphan Hydrobromide (10mg)",
        "manufacturer": "Glenmark Pharmaceuticals Ltd",
        "rx": "Prescription Required",
        "packaging": "bottle of 100 ml Syrup"
      },
      {
        "product_name": "Atarax 25mg Tablet",
        "salt": "Hydroxyzine (25mg)",
        "manufacturer": "Dr Reddy's Laboratories Ltd",
        "rx": "Prescription Required",
        "packaging": "strip of 15 tablets"
      },
      {
        "product_name": "Allegra 120mg Tablet",
        "salt": "Fexofenadine (120mg)",
        "manufacturer": "Sanofi India  Ltd",
        "rx": "Prescription Required",
        "packaging": "strip of 10 tablets"
      },
      {
        "product_name": "Avil 25 Tablet",
        "salt": "Pheniramine (25mg)",
        "manufacturer": "Sanofi India  Ltd",
        "rx": "Prescription Required",
        "packaging": "strip of 15 tablets"
      },
      {
        "product_name": "Ascoril LS Syrup",
        "salt":
            "Ambroxol (30mg/5ml) + Levosalbutamol (1mg/5ml) + Guaifenesin (50mg/5ml)",
        "manufacturer": "Glenmark Pharmaceuticals Ltd",
        "rx": "Prescription Required",
        "packaging": "bottle of 100 ml Syrup"
      },
      {
        "product_name": "Azithral 500 Tablet",
        "salt": "Azithromycin (500mg)",
        "manufacturer": "Alembic Pharmaceuticals Ltd",
        "rx": "Prescription Required",
        "packaging": "strip of 5 tablets"
      },
      {
        "product_name": "Augmentin 625 Duo Tablet",
        "salt": "Amoxycillin  (500mg) +  Clavulanic Acid (125mg)",
        "manufacturer": "Glaxo SmithKline Pharmaceuticals Ltd",
        "rx": "Prescription Required",
        "packaging": "strip of 10 tablets"
      }
    ];
    return result.map((e) => MedicineDetails.fromJson(e)).toList();
  }
  // Future<List<MedicineDetails>> fetchAlbum() async {
  //   final response = await http
  //       .get(Uri.parse('http://127.0.0.1:8000/list-of-product/{title}'));

  //   if (response.statusCode == 200) {
  //     final List result = json.decode(response.body);
  //     return result.map((e) => MedicineDetails.fromJson(e)).toList();
  //   } else {
  //     throw Exception('Failed to load data');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: primaryDarkColor,
        title: title!.text.color(primaryDarkColor).make(),
        backgroundColor: const Color.fromARGB(255, 240, 240, 240),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<List<MedicineDetails>>(
              future: fetchMedicine(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.6,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          snapshot.data![index].product_name
                                              .toString(),
                                          overflow: TextOverflow.clip,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        4.heightBox,
                                        Text(
                                          snapshot.data![index].salt.toString(),
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                              fontSize: 10,
                                              color: Colors.grey,
                                              fontStyle: FontStyle.italic),
                                        ),
                                        6.heightBox,
                                        Text(
                                          snapshot.data![index].manufacturer
                                              .toString(),
                                          overflow: TextOverflow.clip,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              color: primaryDarkColor),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    child: Text(
                                      snapshot.data![index].packaging
                                          .toString(),
                                      overflow: TextOverflow.clip,
                                      style: const TextStyle(
                                          color: primaryColor,
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              8.heightBox,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    snapshot.data![index].rx.toString(),
                                    overflow: TextOverflow.clip,
                                    style: const TextStyle(
                                        color: Colors.redAccent,
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(icHeart,
                                              width: 27,
                                              height: 27,
                                              color: redColor)
                                          .onTap(() {}),
                                      4.widthBox,
                                      ElevatedButton(
                                        onPressed: () => {},
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: primaryDarkColor,
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 15),
                                            shape: const StadiumBorder()),
                                        child: const Text("Add to Cart"),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                } else if (snapshot.data!.isEmpty) {
                  return "No Products Found".text.makeCentered();
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                return const CircularProgressIndicator();
              },
            ),
            // child: ListView.builder(
            //   itemCount: filtered.length,
            //   itemBuilder: (context, index) {
            //     return Card(
            //       elevation: 6,
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(14),
            //       ),
            //       child: Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: Column(
            //           children: [
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Text(
            //                   filtered[index][0],
            //                   style:
            //                       const TextStyle(fontWeight: FontWeight.bold),
            //                 ),
            //                 Text(
            //                   filtered[index][2],
            //                   style: const TextStyle(
            //                       fontWeight: FontWeight.bold,
            //                       color: Colors.red),
            //                 ),
            //               ],
            //             ),
            //             10.heightBox,
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Text(
            //                   filtered[index][1],
            //                 ),
            //                 ElevatedButton(
            //                   onPressed: () => {},
            //                   style: ElevatedButton.styleFrom(
            //                       backgroundColor: primaryDarkColor,
            //                       padding: const EdgeInsets.symmetric(
            //                           vertical: 12, horizontal: 15),
            //                       shape: const StadiumBorder()),
            //                   child: const Text("Add to Cart"),
            //                 )
            //               ],
            //             )
            //           ],
            //         ),
            //       ),
            //     );
            //   },
            // ),
          ),
        ],
      ),
    );
  }
}
