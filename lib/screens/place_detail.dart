import 'package:flutter/material.dart';
import 'package:maps_ifran/models/place_model.dart';

class PlaceDetailScreen extends StatelessWidget {
  const PlaceDetailScreen({super.key, required this.place});

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          place.title,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white70),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Image.file(
            place.image,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
