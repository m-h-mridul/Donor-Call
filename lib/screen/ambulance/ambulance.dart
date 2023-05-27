// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore, file_names, must_be_immutable, camel_case_types, unused_field

import 'package:donercall/helper/Textstyle.dart';
import 'package:donercall/helper/media_query.dart';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../controller/mapcontroller.dart';
import '../../helper/utils/internetconnectivity.dart';

class AmbulanceView extends StatelessWidget {
  AmbulanceView({Key? key}) : super(key: key);

  MapController mapController = MapController();

  @override
  Widget build(BuildContext context) {
    Internetcheaker();
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuerypage.safeBlockHorizontal! * 1,
          vertical: MediaQuerypage.safeBlockVertical! * 0.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuerypage.safeBlockVertical! * 1,
                horizontal: MediaQuerypage.safeBlockHorizontal! * 4),
            child: Text('Live Ambulance Update',
                style: TextStyleManger.blackbold20),
          ),
          Expanded(
            child: GoogleMap(
              initialCameraPosition: mapController.kGoogle,
              markers: Set<Marker>.of(mapController.markersAmbulance),
              mapType: MapType.normal,
              myLocationEnabled: true,
              compassEnabled: false,
              mapToolbarEnabled: false,
              zoomControlsEnabled: false,
              myLocationButtonEnabled: false,
              onMapCreated: (GoogleMapController controller) {
                if (!mapController.ambulancecontroller.isCompleted) {
                  mapController.ambulancecontroller.complete(controller);
                }
              },
            ),
          ),
          ambulance(),
        ],
      ),
    );
  }

  Center ambulance() {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            InkWell(
              onTap: () {},
              child: Card(
                elevation: 3,
                child: SizedBox(
                  height: MediaQuerypage.screenHeight! * 0.13,
                  width: MediaQuerypage.screenWidth! * 0.25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                          //fit: BoxFit.none,
                          width: MediaQuerypage.screenWidth! * 0.3,
                          height: MediaQuerypage.screenHeight! * .06,
                          image: const AssetImage(
                              'assets/best-icu-ambulance-service-dhaka.png')),
                      Text(
                        'ICU Ambulance',
                        style: TextStyleManger.black16,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Card(
                elevation: 3,
                child: SizedBox(
                  height: MediaQuerypage.screenHeight! * 0.13,
                  width: MediaQuerypage.screenWidth! * 0.25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                          //fit: BoxFit.none,
                          width: MediaQuerypage.screenWidth! * 0.3,
                          height: MediaQuerypage.screenHeight! * .06,
                          image:
                              const AssetImage('assets/hiace-ambulance.png')),
                      Text(
                        'HAICE Ambulance',
                        style: TextStyleManger.black16,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Card(
                elevation: 3,
                child: SizedBox(
                  height: MediaQuerypage.screenHeight! * 0.13,
                  width: MediaQuerypage.screenWidth! * 0.25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                          //fit: BoxFit.none,
                          width: MediaQuerypage.screenWidth! * 0.3,
                          height: MediaQuerypage.screenHeight! * .06,
                          image: const AssetImage(
                              'assets/freezer-van-ambulanceservice-dhaka.png')),
                      Center(
                        child: Text(
                          'FREEZER VAN',
                          style: TextStyleManger.black16,
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                // Get.toNamed(AmbulanceUI.name);
              },
              child: Card(
                elevation: 3,
                child: SizedBox(
                  height: MediaQuerypage.screenHeight! * 0.13,
                  width: MediaQuerypage.screenWidth! * 0.25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        //fit: BoxFit.none,
                        width: MediaQuerypage.screenWidth! * 0.3,
                        height: MediaQuerypage.screenHeight! * .06,
                        image: AssetImage('assets/ambulance.png'),
                      ),
                      Text(
                        'Book Ambulance',
                        style: TextStyleManger.black16,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
