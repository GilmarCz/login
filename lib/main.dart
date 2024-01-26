import 'package:flutter/material.dart';
import 'package:login/dashboard_screen.dart';

import 'login_screen.dart';



void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter - Rotas nomeadas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      home: const Dashboardscreen(),
    );
  }
}



