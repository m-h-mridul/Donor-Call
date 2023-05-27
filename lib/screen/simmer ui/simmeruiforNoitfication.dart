import 'package:donercall/helper/media_query.dart';
import 'package:donercall/helper/media_query.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SimmerUIForNotification extends StatelessWidget {
  const SimmerUIForNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: MediaQuerypage.safeBlockVertical! * 2,
            horizontal: MediaQuerypage.safeBlockHorizontal! * 1),
        child: Shimmer.fromColors(
          baseColor: const Color.fromARGB(255, 168, 170, 168),
          highlightColor: Colors.grey,
          enabled: true,
          child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(
              thickness: 1,
              color: Colors.black,
            ),
            itemCount: 9,
            itemBuilder: (_, __) => ListTile(
              leading: const CircleAvatar(),
              title: Container(
                width: MediaQuerypage.screenWidth! * 0.3,
                height: MediaQuerypage.screenHeight! * 0.03,
                color: Colors.white,
              ),
              subtitle: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuerypage.safeBlockVertical! * 0.5),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuerypage.screenWidth! * 0.8,
                          height: MediaQuerypage.screenHeight! * 0.015,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuerypage.safeBlockVertical! * 0.2),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuerypage.screenWidth! * 0.8,
                          height: MediaQuerypage.screenHeight! * 0.015,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              trailing: Icon(
                Icons.phone_enabled,
                color: Colors.white,
                size: MediaQuerypage.pixel! * 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
