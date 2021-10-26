// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class BuldScreen extends StatefulWidget {
  @override
  _BuldScreenState createState() => _BuldScreenState();
}

class _BuldScreenState extends State<BuldScreen> {
  var isBulbOn = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text("Bulb Project"),
          ),
          body: Container(
            width: double.infinity,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  isBulbOn
                      ? Image.asset("assets/bulb_On.jpg")
                      : Image.network(
                          "https://media.istockphoto.com/photos/light-bulb-on-black-picture-id121075544?k=20&m=121075544&s=612x612&w=0&h=x3yo_T7C3CYfOxqr0Dqdlkm1OfgSD43FGvxiVd4MQNA=",
                          width: 200,
                          height: 200,
                        ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        isBulbOn = !isBulbOn;
                      });
                    },
                    child: Text("Bulb On/ Off"),
                  )
                ]),
          ),
        ));
  }
}
