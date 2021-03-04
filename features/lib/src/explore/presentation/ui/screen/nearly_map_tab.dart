import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class NearlyScreen extends StatefulWidget {
  @override
  _NearlyScreenState createState() => _NearlyScreenState();
}

class _NearlyScreenState extends State<NearlyScreen>
    with AutomaticKeepAliveClientMixin<NearlyScreen> {
  GoogleMapController _mapController;

  final LatLng _center = const LatLng(10.779785, 106.699020);

  final Location _location = Location();

  MapType _currentMapType = MapType.normal;

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
    _location.onLocationChanged.listen((event) {
      _mapController.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
              target: LatLng(event.latitude, event.longitude), zoom: 11),
        ),
      );
    });
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Stack(
      children: [
        GoogleMap(
          mapType: _currentMapType,
          onMapCreated: _onMapCreated,
          myLocationButtonEnabled: true,
          myLocationEnabled: true,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 60.0, right: 10.0),
          child: Align(
            alignment: Alignment.topRight,
            child: FloatingActionButton(
              mini: true,
              onPressed: () => {_onMapTypeButtonPressed()},
              materialTapTargetSize: MaterialTapTargetSize.padded,
              backgroundColor: Colors.white60,
              child: Icon(
                Icons.map_outlined,
                size: ScreenUtil().setWidth(20),
                color: Colors.black87.withOpacity(0.7),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _onMapTypeButtonPressed() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }
}
