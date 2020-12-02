import 'package:flutter/material.dart';
import '../widgets/widgetspage.dart';
import 'package:flutter/services.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.white));
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.keyboard_backspace,
          size: 30.0,
        ),
        title: Text(
          "EDIT PROFILE",
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileDisplay(),
              SizedBox(
                height: 20.0,
              ),
              DetailsContainer(),
              SizedBox(height: 2.5),
              Text(
                'Bank Details',
                style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10.0,
              ),
              BankDetails(),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
                child: Container(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Center(
                    child: Text(
                      "SAVE",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
