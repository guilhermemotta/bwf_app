import 'package:flutter/material.dart';

import 'package:bwf_app/building_primer/building_primer.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BWF App',
      theme: ThemeData(
        //primarySwatch: Colors.red,
        colorScheme: ColorScheme.dark(),
        primaryColor: Colors.red.shade900,
      ),
      home: BuildingPrimerScreen(),
    );
  }
}
