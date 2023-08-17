import 'dart:async';
import 'package:flutter/material.dart';
import 'package:minto/screens/login.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Scaffold(backgroundColor: Colors.black, body: MyHomePage()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Align(
          //   alignment: Alignment.center,
          //   child: Image.asset(
          //     'assets/images/LOGOPNG.png',
          //     width: 200,
          //     height: 200,
          //   ),
          // ),
          Center(
            child: const Text(
              'MINTO',
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Lottie.network(height: 150,width: 150,
              'https://lottie.host/c2842ca7-fee9-4987-a83c-2c1b42541ec0/mPItmpdUm0.json'),
              Text('version 1.0')
        ],
      ),
    );
  }
}
