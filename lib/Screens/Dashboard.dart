import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/Screens/Login.dart';
import 'package:login/Components/customicons.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Login();
              })),
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50, left: 50),
              child: SvgPicture.asset(
                google_plus,
                width: 100,
                height: 100,
              ),
            ),
          ],
        ));
  }
}
