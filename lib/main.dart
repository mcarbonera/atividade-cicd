import 'package:flutter/material.dart';
import 'package:imc_utfpr_t2/bmi_controller.dart';
import 'package:imc_utfpr_t2/pages/insert_data.dart';
import 'package:imc_utfpr_t2/pages/result_bmi.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => BMIController(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InsertData(),
        '/result': (context) => const ResultBMI(),
      },
    );
  }
}
