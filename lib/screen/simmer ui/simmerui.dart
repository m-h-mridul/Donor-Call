import 'package:donercall/helper/media_query.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SimmerUI extends StatelessWidget {
  const SimmerUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: MediaQuerypage.safeBlockVertical! * 2,
            horizontal: MediaQuerypage.safeBlockHorizontal! * 2),
        child: Shimmer.fromColors(
          baseColor: const Color.fromARGB(255, 168, 170, 168),
          highlightColor: Colors.grey,
          enabled: true,
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (_, __) => Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuerypage.safeBlockVertical! * 0.5),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(MediaQuerypage.pixel! * 9),
                    border: Border.all()),
                child: Padding(
                  padding: EdgeInsets.all(MediaQuerypage.pixel! * 6),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: MediaQuerypage.screenWidth! * 0.3,
                            height: MediaQuerypage.screenHeight! * 0.02,
                            color: Colors.white,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 2.0),
                          ),
                          Container(
                            width: MediaQuerypage.screenWidth! * 0.74,
                            height: MediaQuerypage.screenHeight! * 0.06,
                            color: Colors.white,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 2.0),
                          ),
                          Row(
                            children: [
                              Container(
                                width: MediaQuerypage.screenWidth! * 0.25,
                                height: MediaQuerypage.screenHeight! * 0.02,
                                color: Colors.white,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 2.0),
                              ),
                              Container(
                                width: MediaQuerypage.screenWidth! * 0.48,
                                height: MediaQuerypage.screenHeight! * 0.02,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 2.0),
                          ),
                          Row(
                            children: [
                              Container(
                                width: MediaQuerypage.screenWidth! * 0.22,
                                height: MediaQuerypage.screenHeight! * 0.02,
                                color: Colors.white,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 2.0),
                              ),
                              Container(
                                width: MediaQuerypage.screenWidth! * 0.43,
                                height: MediaQuerypage.screenHeight! * 0.02,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 2.0),
                          ),
                          Row(
                            children: [
                              Container(
                                width: MediaQuerypage.screenWidth! * 0.2,
                                height: MediaQuerypage.screenHeight! * 0.02,
                                color: Colors.white,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 2.0),
                              ),
                              Container(
                                width: MediaQuerypage.screenWidth! * 0.35,
                                height: MediaQuerypage.screenHeight! * 0.02,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuerypage.safeBlockHorizontal! * 2),
                        child: Icon(
                          Icons.phone_enabled,
                          size: MediaQuerypage.pixel! * 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
