// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:geolocator/geolocator.dart';
import 'package:adhan/adhan.dart';

class Isha extends StatefulWidget {
  const Isha({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<Isha> createState() => _IshaState();
}

class _IshaState extends State<Isha> {
  Geolocator location = new Geolocator();
  Position? position;
  double latitude = 24.713552;
  double longitude = 46.675297;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: FutureBuilder(
                future: getLoc(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(color: Colors.black12),
                    );
                  }
                  print(
                      "========================================================");
                  print(latitude);
                  print(longitude);
                  final myCoordinates = Coordinates(latitude,
                      longitude); // Replace with your own location lat, lng.
                  final params = CalculationMethod.umm_al_qura.getParameters();
                  params.madhab = Madhab.hanafi;
                  final prayerTimes = PrayerTimes.today(myCoordinates, params);

                  return Text(DateFormat.jm().format(prayerTimes.isha),
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w200));
                })));
  }

  getLoc() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    latitude = position!.latitude!;
    longitude = position!.longitude!;
  }
} // Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
