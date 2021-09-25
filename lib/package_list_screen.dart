import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:untitled/main.dart';
import 'package:untitled/model/package_data.dart';
import 'package:untitled/package_detail_screen.dart';

class PackageListScreen extends StatelessWidget {
  final String email;
  final currencyFormatter = NumberFormat.currency(locale: 'ID');

  PackageListScreen({required this.email});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Center(
              child: Container(
                width: 800,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: double.infinity,
                      child: Image.asset(
                        'images/bg_header.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin:
                          EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                      child: Text(
                        "Layanan Populer",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.all(4.0),
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        final PackageData packageData = packages[index];
                        return Container(
                          margin: EdgeInsets.all(4.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return PackageDetailScreen(
                                  packageData: packageData,
                                  email: email,
                                );
                              }));
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: AspectRatio(
                                        aspectRatio: 1,
                                        child: ClipRRect(
                                          child: Image.network(
                                            packageData.image,
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius: BorderRadius.horizontal(
                                              left: Radius.circular(10.0)),
                                        )),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      margin: EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            packageData.name,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            packageData.description,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              color: Colors.black54,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          Text(
                                            packageData.duration.isNotEmpty
                                                ? 'Dimulai dari ${currencyFormatter.format(packageData.startPrice)}'
                                                : '',
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: MyColors.primary,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: packages.length,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        value: SystemUiOverlayStyle.light);
  }
}
