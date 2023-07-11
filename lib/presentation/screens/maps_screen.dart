import 'package:flutter/material.dart';
import '../widgets/maps_screen_body.dart';

class MapsScreen extends StatelessWidget {
  const MapsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: MapsScreenBody()
    );
}
  }
