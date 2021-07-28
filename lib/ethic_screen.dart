import 'package:flutter/material.dart';
import 'package:untitled/main.dart';
import 'package:untitled/model/ethic_data.dart';

class EthicScreen extends StatelessWidget {

  final TextStyle headerText = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 18,
    color: Colors.black54,
  );

  final TextStyle descText = TextStyle(
      color: Colors.black54
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: MyColors.primary),
          elevation: 0.0,
          title: Text(
            "Etika Layanan",
            style: TextStyle(color: MyColors.primary),
          ),
        ),
        body: SingleChildScrollView(
          child: Center (
            child: Container(
            width: 800,
            child: Column(
              children: [
                Image.asset(
                  'images/bg_header.png',
                  fit: BoxFit.fill,
                  width: double.infinity,
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: ethicList.map((ethic) {
                      return
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    bottom: 8.0
                                  ),
                                  width: double.infinity,
                                  child: Text(
                                    ethic.header,
                                    style: headerText,
                                  ),
                                ),
                                Text(
                                  ethic.content,
                                  textAlign: TextAlign.justify,
                                  style: descText,
                                ),
                              ],
                            ),
                          );
                    }).toList()
                  ),
                )
              ],
            ),
          ),
        ),
        )
    );
  }
}
