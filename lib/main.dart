import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linkedin_ui/src/presentation/screens/beranda.dart';
import 'package:splash_view/source/presentation/pages/splash_view.dart';
import 'package:splash_view/source/presentation/widgets/background_decoration.dart';
import 'package:splash_view/source/presentation/widgets/done.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashView(
          duration: const Duration(milliseconds: 7000),
          backgroundColor: Colors.white,
          showStatusBar: true,
          backgroundImageDecoration: const BackgroundImageDecoration(
            image: AssetImage('assets/img/linkedin intro.gif'),
            fit: BoxFit.cover,
          ),
          done: Done(
            const MyApp(),
          ),
        ),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Linkedin UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Beranda(),
    );
  }
}
