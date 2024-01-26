import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:netflix_provider/view/netflix/netflixhome.dart';

class Splashpage extends StatefulWidget {
  const Splashpage({super.key});

  @override
  State<Splashpage> createState() => _HomeState();
}

class _HomeState extends State<Splashpage> {
  @override
  void initState() {
    super.initState();
    loadAnimation();
  }

  Future<void> loadAnimation() async {
    Future.delayed(const Duration(seconds: 5), navigateToNextScreen);
  }

  void navigateToNextScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => const Netflixhome()), // 다음 화면으로 이동
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset("assets/images/data.json"),
      ),
    );
  }
}
