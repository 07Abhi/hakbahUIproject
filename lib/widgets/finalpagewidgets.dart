import 'package:flutter/material.dart';

class CoverImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.hardEdge,
      alignment: Alignment.center,
      children: [
        Container(
          height: 150.0,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            image: DecorationImage(
              image: NetworkImage(
                'https://images.unsplash.com/photo-1515762748318-32ac7390b8eb?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          left: 5.0,
          top: 2.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.circle, color: Colors.yellow, size: 15.0),
              Text(
                'ACTION NEEDED',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        Positioned(
          left: 5.0,
          bottom: 2.0,
          child: Text(
            '15MAR,2018 - 15DEC,2018',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class TotalReq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: "Total Requested Member",
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  )),
              TextSpan(
                text: "(5)",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.black),
              ),
            ],
          ),
        ),
        Icon(
          Icons.clear_all,
          size: 25.0,
        ),
      ],
    );
  }
}

class UsersTiles extends StatelessWidget {
  final String designation;
  final String entry;
  final Color colors;
  UsersTiles({this.designation, this.entry, this.colors});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40.0,
            backgroundImage: AssetImage("assets/profilebadge.png"),
          ),
          Text(
            designation.toUpperCase(),
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 14.0, fontWeight: FontWeight.w500, color: colors),
          ),
          Text(
            entry,
            style: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade600,
            ),
          )
        ],
      ),
    );
  }
}

class DetailsBox extends StatelessWidget {
  final String boxName;
  final String data;
  DetailsBox({this.data, this.boxName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5.0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              boxName,
              style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              data,
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.grey.shade800,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RowsData1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(child: DetailsBox(boxName: "TOTAL AMOUNT", data: "SR 30,000")),
        SizedBox(
          width: 20.0,
        ),
        Expanded(child: DetailsBox(boxName: "PERIODS", data: "10 MONTHS")),
      ],
    );
  }
}

class RowsData2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
            child: DetailsBox(boxName: "MONTHLY PAYMENT", data: "SR 30,000")),
        SizedBox(
          width: 20.0,
        ),
        Expanded(child: DetailsBox(boxName: "FREQUENCY", data: "MONTHLY")),
      ],
    );
  }
}

class RowsData3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
            child: DetailsBox(boxName: "NEXT PAYMENT", data: " 5 MAY SR-3000")),
        SizedBox(
          width: 20.0,
        ),
        Expanded(child: DetailsBox(boxName: "MY ORDERS", data: "4")),
      ],
    );
  }
}

class TermsAndCon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Terms:- ",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: Colors.black54,
              ),
            ),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: ".",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black45,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Payment due within 3 days.",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black45,
                    ),
                  )
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: ".",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black45,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Payment recieve within a week of receiving date.",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
