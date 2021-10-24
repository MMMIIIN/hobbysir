import 'dart:async';
import 'package:dwaf_hobbysir/src/shop.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:get/get.dart';

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
        child: Column(
          children: [
            Container(
              height: context.mediaQuery.size.height * 0.05,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  )
                ],
              ),
            ),
            Container(
              height: context.mediaQuery.size.height * 0.7,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: context.mediaQuery.size.height * 0.4,
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
                    locationWidget(),
                    textWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget locationWidget() {
    return Container(
      height: context.mediaQuery.size.height * 0.1,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.gps_fixed,
                color: Colors.blue,
                size: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  testShopList[widget.index].address,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                ),
              ),
              Icon(
                Icons.paste,
                color: Colors.grey,
                size: 20,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.directions_bus_rounded,
                    color: Colors.blue,
                    size: 20,
                  ),
                  Text(
                    '452m',
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.local_parking,
                    color: Colors.blue,
                    size: 20,
                  ),
                  Text(
                    testShopList[widget.index].isParking ? '주차가능' : '주차불가',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget textWidget() {
    return Text('abc');
  }
}
