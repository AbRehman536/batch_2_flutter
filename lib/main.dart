
import 'package:batch_2/screens/auth_screens/login_screen.dart';
import 'package:batch_2/screens/home_screens/explore.dart';
import 'package:batch_2/screens/home_screens/favorite.dart';
import 'package:batch_2/screens/home_screens/home_scren.dart';
import 'package:batch_2/screens/home_screens/my_cart_screen.dart';
import 'package:batch_2/screens/start_screens/on_Boarding.dart';
import 'package:batch_2/screens/start_screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      // Device Preview configuration
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),

      home: HomeScreen(),
    );
  }
}
