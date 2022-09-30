import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/app_colors.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whitecolor,
      child: const Center(child: Text("Map")),
    );
  }
}
