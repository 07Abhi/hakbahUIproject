import 'package:flutter/material.dart';
import '../constants.dart';

class RegisterLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Register Yourself with Hakbah",
      style: TextStyle(
          fontSize: 32.0, fontWeight: FontWeight.w500, color: Colors.black87),
    );
  }
}

class FormFields extends StatelessWidget {
  final String hintsText;
  final Icon iconsData;
  final String labelText;
  final TextInputType inputType;
  FormFields({this.hintsText, this.iconsData, this.labelText, this.inputType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      style: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
        color: Colors.grey.shade800,
      ),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          fontSize: 15.0,
          color: Colors.yellow.shade700,
          fontWeight: FontWeight.w600,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade400),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        hintText: hintsText,
        prefixIcon: iconsData,
      ),
    );
  }
}

class ProfileDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: CircleAvatar(
              radius: 48.0,
              backgroundImage: AssetImage(
                "assets/profilebadge.png",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "NASHWA",
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 3.0,
                ),
                Row(
                  children: [
                    Text(
                      "OMAR",
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      width: 3.0,
                    ),
                    Icon(
                      Icons.edit_outlined,
                      size: 30.0,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DetailsTiles extends StatelessWidget {
  final String upperHeading;
  final String lowerDetails;
  final IconData iconData;
  DetailsTiles({this.iconData, this.lowerDetails, this.upperHeading});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                iconData,
                size: 25.0,
                color: Colors.black54,
              ),
              SizedBox(
                width: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    upperHeading,
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.yellow.shade800,
                    ),
                  ),
                  SizedBox(
                    height: 2.5,
                  ),
                  Text(
                    lowerDetails,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black45,
                    ),
                  ),
                ],
              )
            ],
          ),
          Divider(thickness: 1.5, color: Colors.black45)
        ],
      ),
    );
  }
}

class BankDetailsTiles extends StatelessWidget {
  final String upperHeading;
  final String lowerDetails;

  BankDetailsTiles({this.lowerDetails, this.upperHeading});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            textBaseline: TextBaseline.ideographic,
            children: [
              SizedBox(
                width: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    upperHeading,
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.yellow.shade800,
                    ),
                  ),
                  SizedBox(
                    height: 2.5,
                  ),
                  Text(
                    lowerDetails,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black45,
                    ),
                  ),
                ],
              )
            ],
          ),
          Divider(thickness: 1.5, color: Colors.black45)
        ],
      ),
    );
  }
}

class BankDetailsTilesIcon extends StatelessWidget {
  final String upperHeading;
  final String lowerDetails;
  final IconData iconsData;

  BankDetailsTilesIcon({this.lowerDetails, this.upperHeading, this.iconsData});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      upperHeading,
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.yellow.shade800,
                      ),
                    ),
                    SizedBox(
                      height: 2.5,
                    ),
                    Text(
                      lowerDetails,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Icon(
                  iconsData,
                  size: 25.0,
                  color: Colors.black45,
                ),
              )
            ],
          ),
          Divider(thickness: 1.5, color: Colors.black45)
        ],
      ),
    );
  }
}

class DetailsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DetailsTiles(
              upperHeading: "Email Address",
              lowerDetails: "Hamza.omar@email.com",
              iconData: Icons.email_outlined,
            ),
            DetailsTiles(
              upperHeading: "Phone Number",
              lowerDetails: "+966-56 107 5513",
              iconData: Icons.phone_android_outlined,
            ),
            DetailsTiles(
              upperHeading: "Address",
              lowerDetails: "Dubia Mall, Dubai, UAE",
              iconData: Icons.location_city,
            ),
          ],
        ),
      ),
    );
  }
}

class BankDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BankDetailsTiles(
              upperHeading: "Bank Name",
              lowerDetails: "Saudi Investment Bank",
            ),
            BankDetailsTilesIcon(
              upperHeading: "IBAN Number",
              lowerDetails: "SA30608010167519",
              iconsData: Icons.error_outline,
            ),
            BankDetailsTilesIcon(
              upperHeading: "City",
              lowerDetails: "Riyadh",
              iconsData: Icons.keyboard_arrow_down,
            ),
            BankDetailsTilesIcon(
              upperHeading: "Country",
              lowerDetails: "Saudi Arabia",
              iconsData: Icons.keyboard_arrow_down,
            ),
          ],
        ),
      ),
    );
  }
}
