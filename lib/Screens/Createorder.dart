import 'package:flutter/material.dart';

class CreateOrder extends StatefulWidget {
  @override
  _CreateOrderState createState() => _CreateOrderState();
}

class _CreateOrderState extends State<CreateOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              margin: new EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Center(
                child: Text(
                  "Create order",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 35,
                  ),
                ),
              )),
          Container(
            margin: new EdgeInsets.only(left: 30, right: 30, top: 20),
            child: ListTile(
              title: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email or Phone Numbers',
                ),
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
