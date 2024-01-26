import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:netflix_provider/view/onboarding/onboardingpage.dart';

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

  // netflix splash 이미지 시간이 끝나면 다음 페이지 이동
  Future<void> loadAnimation() async {
    Future.delayed(const Duration(seconds: 4), navigateToNextScreen);
  }

  void navigateToNextScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) => const OnboardingPage()), // 다음 화면으로 이동
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
