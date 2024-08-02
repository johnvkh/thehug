import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(

        child: Container(
          width: MediaQuery.of(context).size.width * 0.5,
          height: MediaQuery.of(context).size.height * 0.5,
          child: PrettyQrView.data(
            data: 'https://thehug-a1f1b.firebaseapp.com/',
            decoration: const PrettyQrDecoration(

              // image: PrettyQrDecorationImage(
              //   fit: BoxFit.fitWidth,
              //   image: AssetImage('assets/images/LOGO01.png'),
              // ),
            ),
          ),
        ),
      ),
    );
  }
}