import 'package:flutter/material.dart';
import 'package:flutter_project/routes/AppRoutes.dart';
import 'package:flutter_project/views/show_imc_data.dart';

import 'views/input_imc_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        AppRoutes.INPUT_DATA: (_) => const InputImcDataStateful(),
        AppRoutes.SHOW_DATA: (_) => const ShowImcData()
      },
    );
  }
}
