import 'package:donercall/controller/mapcontroller.dart';

import 'package:donercall/helper/appcolor.dart';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../helper/Textstyle.dart';
import '../../helper/media_query.dart';

// ignore: must_be_immutable
class Emeregency extends StatelessWidget {
  Emeregency({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Emergency Help",
            style: TextStyleManger.black18,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            spacing: 5,
            runSpacing: 2,
            children: [
              Container(
                width: MediaQuerypage.screenWidth! * .45,
                height: MediaQuerypage.screenHeight! * .15,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius:
                      BorderRadius.circular(10), // Set the border radius
                ),
                child: const Center(
                  child: Text(
                    'Blood Bank',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuerypage.screenWidth! * .45,
                height: MediaQuerypage.screenHeight! * .15,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius:
                      BorderRadius.circular(10), // Set the border radius
                ),
                child: const Center(
                  child: Text(
                    'Help Line',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
