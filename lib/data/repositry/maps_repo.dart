import 'package:demo_maps/data/webservices/places_webservices.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../models/place_directions.dart';
import '../models/place_model.dart';
import '../models/place_suggestation_model.dart';

class MapsRepository {
  final PlacesWebservices placesWebservices;

  MapsRepository(this.placesWebservices);

  Future<List<PlaceSuggestionModel>> fetchSuggestions(
      String place, String sessionToken) async {
    final suggestions =
    await placesWebservices.fetchSuggestions(place, sessionToken);

    return suggestions
        .map((suggestion) => PlaceSuggestionModel.fromJson(suggestion))
        .toList();
  }

  Future<PlaceModel> getPlaceLocation(String placeId, String sessionToken) async {
    final place =
    await placesWebservices.getPlaceLocation(placeId, sessionToken);
    // var readyPlace = Place.fromJson(place);
    return PlaceModel.fromJson(place);
  }

  Future<PlaceDirectionsModel> getDirections(
      LatLng origin, LatLng destination) async {
    final directions =
    await placesWebservices.getDirections(origin, destination);

    return PlaceDirectionsModel.fromJson(directions);
  }
}