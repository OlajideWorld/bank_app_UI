import 'dart:async';

import 'package:bank_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

import '../../commons/custombottomBar.dart';
import '../../utils/sizes.dart';
import '../widget/popUplocation_permission.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startUp(context);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  startUp(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 2), () {});
    showAgentsNearBy(context);
    showPermission(context);
  }

  showAgentsNearBy(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return Wrap(
            children: [
              Container(
                  height: heightSize(150),
                  decoration: const BoxDecoration(
                      color: whitecolor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    children: [
                      SizedBox(
                        width: widthSize(108),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Container(),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: maincolor,
                            elevation: 1,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0)),
                            minimumSize: Size(
                                widthSize(108), heightSize(6)), //////// HERE
                          ),
                        ),
                      ),
                      SizedBox(height: heightSize(36)),
                      Padding(
                        padding: EdgeInsets.only(left: widthSize(30)),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Agents nearby",
                            style: TextStyle(
                                fontSize: fontSize(20),
                                fontWeight: FontWeight.w700,
                                fontFamily: "Poppins"),
                          ),
                        ),
                      )
                    ],
                  ))
            ],
          );
        });
  }

  MapController mapController = MapController(
    initMapWithUserPosition: false,
    initPosition: GeoPoint(latitude: 47.4358055, longitude: 8.4737324),
    areaLimit: BoundingBox(
      east: 10.4922941,
      north: 47.8084648,
      south: 45.817995,
      west: 5.9559113,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const CustomBottomBar(),
        body: OSMFlutter(
          controller: mapController,
          trackMyPosition: false,
          initZoom: 12,
          minZoomLevel: 8,
          maxZoomLevel: 14,
          stepZoom: 1.0,
          userLocationMarker: UserLocationMaker(
            personMarker: const MarkerIcon(
              icon: Icon(
                Icons.location_history_rounded,
                color: Colors.red,
                size: 48,
              ),
            ),
            directionArrowMarker: const MarkerIcon(
              icon: Icon(
                Icons.double_arrow,
                size: 48,
              ),
            ),
          ),
          roadConfiguration: const RoadOption(
            roadColor: Colors.yellowAccent,
          ),
          markerOption: MarkerOption(
              defaultMarker: const MarkerIcon(
            icon: Icon(
              Icons.person_pin_circle,
              color: maincolor,
              size: 56,
            ),
          )),
        ));
  }
}
