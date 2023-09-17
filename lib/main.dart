import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:synarion_project/viewmodel/select_options_provider.dart';
import 'package:synarion_project/view/screens/homepage.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => SelectedOptionProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Synarion Project',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
