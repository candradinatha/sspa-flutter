import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:untitled/components/custom_button.dart';
import 'package:untitled/main.dart';
import 'package:untitled/model/package_data.dart';

class PackageDetailScreen extends StatefulWidget {
  final PackageData packageData;
  final String email;

  PackageDetailScreen({required this.packageData, required this.email});

  @override
  _PackageDetailScreenState createState() =>
      _PackageDetailScreenState(packageData: packageData, email: email);
}

class _PackageDetailScreenState extends State<PackageDetailScreen> {
  final PackageData packageData;
  final String email;
  final TextStyle headerText = TextStyle(fontWeight: FontWeight.bold);
  final TextStyle durationText =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 30);
  final currencyFormatter = NumberFormat.currency(locale: 'ID');
  final _emailController = TextEditingController();
  final _addressController = TextEditingController();
  int selectedDurationIndex = 0;

  _PackageDetailScreenState({required this.packageData, required this.email});

  @override
  void initState() {
    _emailController.text = email;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: MyColors.primary),
          elevation: 0.0,
          title: Text(
            "Detail Layanan",
            style: TextStyle(color: MyColors.primary),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Container(
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        width: 800,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              margin: EdgeInsets.all(16.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: AspectRatio(
                                      aspectRatio: 1,
                                      child: Image.network(
                                        packageData.image,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      margin: EdgeInsets.only(left: 16.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            packageData.name,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            packageData.description,
                                            style: TextStyle(
                                              color: Colors.black54,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(top: 24.0, left: 16.0),
                              child: Text(
                                "Durasi",
                                style: headerText,
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              child: SingleChildScrollView(
                                padding: EdgeInsets.all(8.0),
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: packageData.duration
                                      .asMap()
                                      .entries
                                      .map((duration) {
                                    return Container(
                                      padding: EdgeInsets.all(8.0),
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            selectedDurationIndex =
                                                duration.key;
                                          });
                                        },
                                        child: Card(
                                          shape: selectedDurationIndex ==
                                                  duration.key
                                              ? RoundedRectangleBorder(
                                                  side: BorderSide(
                                                      color: MyColors.primary,
                                                      width: 2.0),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0))
                                              : RoundedRectangleBorder(
                                                  side: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 0.0),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0)),
                                          child: Container(
                                            padding: EdgeInsets.all(8.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Flexible(
                                                        child: Column(
                                                      children: [
                                                        Text(
                                                          "${duration.value.hour}",
                                                          style: durationText,
                                                        ),
                                                        SizedBox(height: 4),
                                                        Text('JAM')
                                                      ],
                                                    )),
                                                    SizedBox(
                                                      width: 8,
                                                    ),
                                                    Flexible(
                                                        child: Column(
                                                      children: [
                                                        Text(
                                                          "${duration.value.minute}",
                                                          style: durationText,
                                                        ),
                                                        SizedBox(height: 4),
                                                        Text('MENIT')
                                                      ],
                                                    )),
                                                  ],
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                ),
                                                Divider(
                                                  color: MyColors.greyLight,
                                                ),
                                                Text(
                                                  "${currencyFormatter.format(duration.value.price)}",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: MyColors.primary),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: 'Masukan email pemesan',
                                    labelText: 'Email Pemesan'),
                                keyboardType: TextInputType.emailAddress,
                                controller: _emailController,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  top: 16.0, left: 16.0, right: 16.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: 'Masukan alamat anda',
                                    labelText: 'Alamat Pemesan'),
                                controller: _addressController,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: MyColors.greyLight,
                          blurRadius: 4,
                          offset: Offset(-0.0, -5))
                    ], color: Colors.white),
                    child: Container(
                      width: 800,
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(children: [
                              Container(
                                width: double.infinity,
                                child: Text(
                                  "Total",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                margin: EdgeInsets.only(top: 8),
                                child: Text(
                                  "${currencyFormatter.format(packageData.duration[selectedDurationIndex].price)}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                ),
                              )
                            ]),
                          ),
                          Expanded(
                            child: CustomButton(
                              title: "Pesan",
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }

  @override
  void dispose() {
    _emailController.dispose();
    _addressController.dispose();
    super.dispose();
  }
}
