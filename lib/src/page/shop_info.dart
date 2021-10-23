import 'dart:async';
import 'package:dwaf_hobbysir/src/shop.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ShopInfoPage extends StatefulWidget {
  int index;

  ShopInfoPage({required this.index});

  @override
  _ShopInfoPageState createState() => _ShopInfoPageState();
}

class _ShopInfoPageState extends State<ShopInfoPage> {
  Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    final List<Marker> markers = [
      Marker(
          markerId: MarkerId('home'),
          position: testShopList[widget.index].latLng)
    ];
    return Material(
      child: SafeArea(
        child: Container(
          child: GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
              target: testShopList[widget.index].latLng,
              zoom: 14.4746,
            ),
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
            markers: markers.toSet(),
          ),
        ),
      ),
    );
  }
}
