import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  Completer<GoogleMapController> _controller = Completer();

  final List<Marker> _marker = [];
  final List<Marker> _list = const [
    Marker(
      markerId: MarkerId('1'),
      position: LatLng(30.7222, 72.6447),
      infoWindow: InfoWindow(
        title: 'Kamalia, Meri Jaan!',
      ),
    ),
    Marker(
      markerId: MarkerId('2'),
      position: LatLng(33.783678, 72.351277),
      infoWindow: InfoWindow(
        title: 'COMSATS University Islamabad Attock Campus',
      ),
    ),
    Marker(
      markerId: MarkerId('3'),
      position: LatLng(33.744108, 72.786605),
      infoWindow: InfoWindow(
        title: 'COMSATS University Islamabad Wah Campus',
      ),
    ),
    Marker(
      markerId: MarkerId('4'),
      position: LatLng(33.766102, 72.823674),
      infoWindow: InfoWindow(
        title: 'University of Engineering and Technology Taxila',
      ),
    ),
    Marker(
      markerId: MarkerId('5'),
      position: LatLng(33.6440635, 73.0668938),
      infoWindow: InfoWindow(
        title: 'University of Gujrat, Rawalpindi',
      ),
    ),
    Marker(
      markerId: MarkerId('6'),
      position: LatLng(33.002309, 73.665151),
      infoWindow: InfoWindow(
        title: 'University of the Punjab Jhelum Campus',
      ),
    ),
    Marker(
      markerId: MarkerId('7'),
      position: LatLng(32.641300, 74.167923),
      infoWindow: InfoWindow(
        title: 'University of Gujrat, Gujrat',
      ),
    ),
    Marker(
      markerId: MarkerId('8'),
      position: LatLng(32.5027578, 74.5283445),
      infoWindow: InfoWindow(
        title: 'Government College Women University, Sialkot',
      ),
    ),
    Marker(
      markerId: MarkerId('9'),
      position: LatLng(32.099771, 74.891801),
      infoWindow: InfoWindow(
        title: 'e-Library, Narowal',
      ),
    ),
    Marker(
      markerId: MarkerId('10'),
      position: LatLng(32.1916207, 74.1544967),
      infoWindow: InfoWindow(
        title: 'University of the Punjab Gujranwala Campus',
      ),
    ),
    Marker(
      markerId: MarkerId('11'),
      position: LatLng(31.716789, 73.958115),
      infoWindow: InfoWindow(
        title: 'e-Library, Shiekhupura',
      ),
    ),
    Marker(
      markerId: MarkerId('12'),
      position: LatLng(31.5773013, 74.3534972),
      infoWindow: InfoWindow(
        title: 'University of Engineering and Technology',
      ),
    ),
    Marker(
      markerId: MarkerId('13'),
      position: LatLng(31.5433075, 74.3247997),
      infoWindow: InfoWindow(
        title: 'Lahore College for Women University',
      ),
    ),
    Marker(
      markerId: MarkerId('14'),
      position: LatLng(31.504231, 74.309952),
      infoWindow: InfoWindow(
        title: 'University of the Punjab, Lahore',
      ),
    ),
    Marker(
      markerId: MarkerId('15'),
      position: LatLng(31.440161, 74.2962167),
      infoWindow: InfoWindow(
        title: 'Punjab Tianjin University of Technology',
      ),
    ),
    Marker(
      markerId: MarkerId('16'),
      position: LatLng(31.4176914, 73.1173738),
      infoWindow: InfoWindow(
        title: 'Government College Women University, Faisalabad',
      ),
    ),
    Marker(
      markerId: MarkerId('17'),
      position: LatLng(31.432479, 73.069399),
      infoWindow: InfoWindow(
        title: 'University of Agriculture, Faisalabad',
      ),
    ),
    Marker(
      markerId: MarkerId('18'),
      position: LatLng(32.0740143, 72.6822328),
      infoWindow: InfoWindow(
        title: 'University of Sargodha, Sargodha',
      ),
    ),
    Marker(
      markerId: MarkerId('19'),
      position: LatLng(32.2819419, 72.2919994),
      infoWindow: InfoWindow(
        title: 'University of Education Jauharabad',
      ),
    ),
    Marker(
      markerId: MarkerId('20'),
      position: LatLng(32.5945546, 71.5582685),
      infoWindow: InfoWindow(
        title: 'University of Sargodha, Mianwali',
      ),
    ),
    Marker(
      markerId: MarkerId('21'),
      position: LatLng(31.616473, 71.087844),
      infoWindow: InfoWindow(
        title: 'University of Sargodha, Bhakkar',
      ),
    ),
    Marker(
      markerId: MarkerId('22'),
      position: LatLng(30.979967, 70.9648993),
      infoWindow: InfoWindow(
        title: 'Bahauddin Zakiriya University, Layyah',
      ),
    ),
    Marker(
      markerId: MarkerId('23'),
      position: LatLng(30.709600, 70.660904),
      infoWindow: InfoWindow(
        title: 'Government Degree college, Taunsa Sharif',
      ),
    ),
    Marker(
      markerId: MarkerId('24'),
      position: LatLng(30.038776, 70.635216),
      infoWindow: InfoWindow(
        title: 'Ghazi University, DG Khan',
      ),
    ),
    Marker(
      markerId: MarkerId('25'),
      position: LatLng(28.38554, 70.372894),
      infoWindow: InfoWindow(
        title: 'Khawaja Farid UEIT, Rahim Yar Khan',
      ),
    ),
    Marker(
      markerId: MarkerId('26'),
      position: LatLng(29.399899, 71.695686),
      infoWindow: InfoWindow(
        title: 'Government Sadiq College Women University, Bahawalpur',
      ),
    ),
    Marker(
      markerId: MarkerId('27'),
      position: LatLng(29.5034237, 71.6378466),
      infoWindow: InfoWindow(
        title: 'Bahauddin Zakiriya University,Lodhran',
      ),
    ),
    Marker(
      markerId: MarkerId('28'),
      position: LatLng(30.2204017, 71.5377569),
      infoWindow: InfoWindow(
        title: 'NFC-IET, Multan',
      ),
    ),
    Marker(
      markerId: MarkerId('29'),
      position: LatLng(30.2694542,71.4975549
      ),
      infoWindow: InfoWindow(
        title: 'Bahauddin Zakiriya University, Multan',
      ),
    ),
    Marker(
      markerId: MarkerId('30'),
      position: LatLng(30.304084, 71.939984),
      infoWindow: InfoWindow(
        title: 'Government College of Commerce, Khanewal',
      ),
    ),
    Marker(
      markerId: MarkerId('31'),
      position: LatLng(30.039526, 72.369023),
      infoWindow: InfoWindow(
        title: 'University of Education, Vehari',
      ),
    ),
    Marker(
      markerId: MarkerId('32'),
      position: LatLng(30.641153, 73.148697),
      infoWindow: InfoWindow(
        title: 'COMSATS University Islamabad Sahiwal Campus',
      ),
    ),
    Marker(
      markerId: MarkerId('33'),
      position: LatLng(30.809864,73.455879),
      infoWindow: InfoWindow(
        title: 'University of Okara',
      ),
    ),
  ];
  static final CameraPosition _kGooglePlex =
      CameraPosition(target: LatLng(30.7222, 72.6447), zoom: 14.4746);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _marker.addAll(_list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GoogleMap(
          initialCameraPosition: _kGooglePlex,
          markers: Set<Marker>.of(_marker),
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0Xff3FBC46),
        onPressed: () async {
          GoogleMapController controller = await _controller.future;
          controller.animateCamera(
            CameraUpdate.newCameraPosition(
              const CameraPosition(target: LatLng(30.7222, 72.6447), zoom: 14),
            ),
          );
        },
        child: const Icon(Icons.location_searching, color: Colors.white),
      ),
    );
  }
}
