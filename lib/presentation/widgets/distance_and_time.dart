import 'package:demo_maps/data/models/place_directions.dart';
import 'package:flutter/material.dart';


class DistanceAndTime extends StatelessWidget {
  const DistanceAndTime({super.key,  this.placeDirections, required this.isTimeAndDistanceVisible});

  final PlaceDirectionsModel? placeDirections;
  final isTimeAndDistanceVisible;

  @override
  Widget build(BuildContext context) {
    return Visibility(
        visible: isTimeAndDistanceVisible,
        child: Positioned(
          top: 15,
          bottom: 550,
          left: 3,
          right:3,
          child: Row(
            children: [
              Flexible(
                  flex:1,
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    margin: const EdgeInsets.fromLTRB(15, 0, 15, 40),
                    color: Colors.black,
                    child:  ListTile(
                      dense: true,
                      horizontalTitleGap: 0,
                      leading: const Icon(
                          Icons.access_time_filled,
                          color: Colors.blue,
                          size: 25,
                      ),
                      title: Text(
                        placeDirections!.totalDuration,
                        style: const TextStyle(color: Colors.white,fontSize: 15),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      )
                    )
                ),
              ),
              const SizedBox(width: 25),
              Flexible(
                flex:1,
                child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    margin: const EdgeInsets.fromLTRB(15, 0, 15, 40),
                    color: Colors.black,
                    child:  ListTile(
                        dense: true,
                        horizontalTitleGap: 0,
                        leading: const Icon(
                          Icons.directions_car_filled,
                          color: Colors.blue,
                          size: 25,
                        ),
                        title: Text(
                          placeDirections!.totalDistance,
                          style: const TextStyle(color: Colors.white,fontSize: 15),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        )
                    )
                ),
              ),
            ],
          )
        )
    );
  }
}
