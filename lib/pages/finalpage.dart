import 'package:flutter/material.dart';
import '../widgets/finalpagewidgets.dart';
import 'package:flutter/services.dart';

List<UsersTiles> users = [
  UsersTiles(
    designation: "Manager",
    entry: "01",
    colors: Colors.red,
  ),
  UsersTiles(
    designation: "Nashwa",
    entry: "02",
    colors: Colors.blue,
  ),
  UsersTiles(
    designation: "Mohommad",
    entry: "-",
    colors: Colors.indigo,
  ),
  UsersTiles(
    designation: "Aziza",
    entry: "01",
    colors: Colors.yellow,
  ),
  UsersTiles(
    designation: "tareeq",
    entry: "-",
    colors: Colors.red,
  ),
];

class FinalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.white),
    );
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.keyboard_backspace,
          size: 30.0,
        ),
        title: Text(
          "N_ABUSAIDA#1803001",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: CoverImage(),
            ),
            TotalReq(),
            SizedBox(
              height: 5.0,
            ),
            Container(
              height: 130.0,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: users,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: RowsData1(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: RowsData2(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: RowsData3(),
            ),
            TermsAndCon(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
              child: Container(
                height: 60.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Center(
                  child: Text(
                    "LEAVE HAKBAH",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
