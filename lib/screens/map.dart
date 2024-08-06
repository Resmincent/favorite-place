import 'package:flutter/material.dart';
import 'package:maps_ifran/models/place_model.dart';

class MapScreen extends StatefulWidget {
  const MapScreen(
      {super.key,
      this.locationn = const PlaceLocation(
          latitude: 37.422, address: '', longitude: -122.084)});

  final PlaceLocation locationn;

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
