import 'package:flutter/material.dart';
import 'package:maps_ifran/models/place_model.dart';
import 'package:maps_ifran/screens/place_detail.dart';

class PlaceListItem extends StatelessWidget {
  const PlaceListItem({super.key, required this.places});
  final List<Place> places;

  @override
  Widget build(BuildContext context) {
    if (places.isEmpty) {
      return const Center(
        child: Text(
          "No Place added yet",
          style: TextStyle(fontSize: 24, color: Colors.white70),
        ),
      );
    }

    return ListView.builder(
      itemCount: places.length,
      itemBuilder: (ctx, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 26,
            backgroundImage: FileImage(places[index].image),
          ),
          title: Text(
            places[index].title,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PlaceDetailScreen(place: places[index])));
          },
        ),
      ),
    );
  }
}
