import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maps_ifran/providers/user_places.dart';
import 'package:maps_ifran/screens/add_place.dart';
import 'package:maps_ifran/widgets/place_list_item.dart';

class PlaceListScreen extends ConsumerWidget {
  const PlaceListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userPlace = ref.watch(userPlacesProvider);

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const AddPlace()));
            },
            icon: const Icon(Icons.add),
            iconSize: 30,
          )
        ],
        backgroundColor: Colors.black,
        title: const Text(
          "My List Place",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white70),
        ),
        centerTitle: true,
      ),
      body: PlaceListItem(places: userPlace),
    );
  }
}
