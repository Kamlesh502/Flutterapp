import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/Screens/Createorder.dart';
import 'package:login/Screens/Login.dart';
import 'package:login/Components/customicons.dart';
import 'package:login/Components/animate.dart';
import 'package:login/Screens/Profile.dart';
import 'package:login/Screens/New_Orders.dart';
import 'package:login/Screens/Chat.dart';
import 'package:sizer/sizer.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentstate = 0;
  final List<Widget> _children = [Profile(), CreateOrder(), neworder(), Chat()];
  // void onTappedBar(int index) {
  //   setState(() {
  //     _currentstate = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, SlideRightRoute(page: Login()));
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15.0, top: 15.0),
            child: Text(
              "Log Out",
              style: TextStyle(
                  fontFamily: 'RobotoBold',
                  fontSize: 18.0.sp,
                  color: Color(0xFF2AD0B5)),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 10, left: 6, right: 6),
        child: SizedBox(
          height: 65,
          child: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(18.0),
            ),
            child: BottomAppBar(
              color: Color(0XFF2BCDB4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _currentstate = 0;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 13, left: 13, right: 12),
                      child: Column(
                        children: [
                          Container(
                            width: 25,
                            height: 25,
                            margin: EdgeInsets.only(bottom: 4),
                            child: SvgPicture.asset(
                              profile_icon,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 2),
                              child: Text(
                                'Profile',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _currentstate = 1;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 14, left: 13, right: 12),
                      child: Column(
                        children: [
                          Container(
                            width: 25,
                            height: 25,
                            margin: EdgeInsets.only(bottom: 5),
                            child: SvgPicture.asset(
                              add,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            child: Text("New Orders",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _currentstate = 2;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 13, left: 13, right: 20),
                      child: Column(
                        children: [
                          Container(
                            width: 25,
                            height: 25,
                            margin: EdgeInsets.only(bottom: 4),
                            child: SvgPicture.asset(
                              ordericon,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            child: Text(
                              "Orders",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _currentstate = 3;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 13, left: 13, right: 20),
                      child: Column(
                        children: [
                          Container(
                            width: 25,
                            height: 25,
                            margin: EdgeInsets.only(bottom: 4),
                            child: SvgPicture.asset(
                              chaticon,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            child: Text("Chat",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: _children[_currentstate],
    );
  }
}
