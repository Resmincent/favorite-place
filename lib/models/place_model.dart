import 'dart:io';

import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Place {
  Place({required this.title, required this.image, required this.location})
      : id = uuid.v4();

  final String id;
  final String title;
  final File image;
  final PlaceLocation location;
}

class PlaceLocation {
  const PlaceLocation(
      {required this.latitude, required this.address, required this.longitude});

  final double latitude;
  final double longitude;
  final String address;
}
